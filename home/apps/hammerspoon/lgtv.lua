local tv_input = "HDMI_3" -- Input to which your Mac is connected
local switch_input_on_wake = true -- Switch input to Mac when waking the TV
local prevent_sleep_when_using_other_input = true -- Prevent sleep when TV is set to other input (ie: you're watching Netflix and your Mac goes to sleep)
local debug = true  -- If you run into issues, set to true to enable debug messages
local IP = "192.168.4.20" -- IP address for TV
local mode = "pc" -- Mode for HDMI input
local name = '"MacBook Pro"' -- Name for HDMI input
local bscpylgtv = "~/opt/lgtv/bin/bscpylgtvcommand" -- -- Full path to "bscpylgtvcommand" executable
local disable_lgtv = false
-- NOTE: You can disable this script by setting the above variable to true, or by creating a file named
-- `disable_lgtv` in the same directory as this file, or at ~/.disable_lgtv.

-- You likely will not need to change anything below this line
local tv_name = "MyTv" -- Name of your TV, set when you run `lgtv auth`
local connected_tv_identifiers = {"LG TV", "LG TV SSCR2"} -- Used to identify the TV when it's connected to this computer
local screen_off_command = "off" -- use "screenOff" to keep the TV on, but turn off the screen.
local lgtv_path = "~/opt/lgtv/bin/lgtv" -- Full path to lgtv executable
local lgtv_cmd = lgtv_path.." "..tv_name
local app_id = "com.webos.app."..tv_input:lower():gsub("_", "")
local lgtv_ssl = true -- Required for firmware 03.30.16 and up. Also requires LGWebOSRemote version 2023-01-27 or newer.


-- Get a list of audio devices connected by HDMI
local function getHDMIAudioDevices()
  local devices = hs.audiodevice.allDevices()
  local hdmiDevices = {}

  for _, device in ipairs(devices) do
      if device:transportType() == "HDMI" then
          table.insert(hdmiDevices, device:name())
      end
  end

  return hdmiDevices
end

local function change_input_settings()
  if debug then
    print("Changing input settings")
  end
  hs.execute(bscpylgtv.." "..IP.." set_device_info "..tv_input.." "..mode.." "..name)
end

local function lgtv_current_app_id()
  local foreground_app_info = exec_command("getForegroundAppInfo")
  for w in foreground_app_info:gmatch('%b{}') do
    if w:match('\"response\"') then
      local match = w:match('\"appId\"%s*:%s*\"([^\"]+)\"')
      if match then
        return match
      end
    end
  end
end

local function tv_is_connected()
  for i, v in ipairs(connected_tv_identifiers) do
    if hs.screen.find(v) ~= nil then
      return true
    end
  end

  return false
end

local function dump_table(o)
  if type(o) == 'table' then
    local s = '{ '
    for k,v in pairs(o) do
      if type(k) ~= 'number' then k = '"'..k..'"' end
      s = s .. '['..k..'] = ' .. dump_table(v) .. ','
    end
    return s .. '} '
  else
    return tostring(o)
  end
end

local function execute(command)
  command = lgtv_cmd.." "..command

  if debug then
    print("Executing command: "..command)
  end

  return hs.execute(command)
end

local function exec_command(command)
  if lgtv_ssl then
    command = command.." ssl"
  end

  command = lgtv_cmd.." "..command

  if debug then
    print("Executing command: "..command)
  end

  return hs.execute(command)
end

-- Source: https://stackoverflow.com/a/4991602
local function file_exists(name)
  local f=io.open(name,"r")
  if f~=nil then
    io.close(f)
    return true
  else
    return false
  end
end

local function lgtv_disabled()
  return disable_lgtv or file_exists("./disable_lgtv") or file_exists(os.getenv('HOME') .. "/.disable_lgtv")
end

if debug then
  print ("TV name: "..tv_name)
  print ("TV input: "..tv_input)
  print ("LGTV path: "..lgtv_path)
  print ("LGTV command: "..lgtv_cmd)
  print ("LGTV input mode: "..mode)
  print ("LGTV input name: "..name)
  print ("SSL: "..tostring(lgtv_ssl))
  print ("App ID: "..app_id)
  print("lgtv_disabled: "..tostring(lgtv_disabled()))
  if not lgtv_disabled() then
    print (exec_command("swInfo"))
    print (exec_command("getForegroundAppInfo"))
    print("Connected screens: "..dump_table(hs.screen.allScreens()))
    print("TV is connected? "..tostring(tv_is_connected()))
  end
end
screenWatcher = hs.screen.watcher.new(function()
  if debug then print("Screens changed") end
  if lgtv_disabled() then
    if debug then print("LGTV feature disabled. Skipping.") end
    return
  end

  if tv_is_connected() then
    if debug then print("TV is connected") end
    local HDMI = getHDMIAudioDevices()
    local screen = HDMI[1]

    if string.sub(screen,1,2) == "LG" then -- check if LG TV is connected
      if debug then print("LG TV is connected") end
      change_input_settings()
    end
  end
end)

watcher = hs.caffeinate.watcher.new(function(eventType)
  if debug then print("Received event: "..(eventType or "")) end

  if lgtv_disabled() then
    if debug then print("LGTV feature disabled. Skipping.") end
    return
  end

  if (eventType == hs.caffeinate.watcher.systemDidWake or
      eventType == hs.caffeinate.watcher.screensDidUnlock or
      eventType == hs.caffeinate.watcher.screensDidWake) and not lgtv_disabled() then

    local HDMI = getHDMIAudioDevices()
    local screen = HDMI[1]

    if string.sub(screen,1,2) == "LG" then -- check if LG TV is connected
      exec_command("on") -- wake on lan
      exec_command("screenOn") -- turn on screen
      if debug then print("TV was turned on") end

      if lgtv_current_app_id() ~= app_id and switch_input_on_wake then
        execute("startApp ssl com.webos.app."..tv_input:lower():gsub("_", ""))
        if debug then print("TV input switched to "..app_id) end
      end

      change_input_settings()
    end
  end
end)



watcher:start()
screenWatcher:start()
