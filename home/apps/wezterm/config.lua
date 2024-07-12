local wz = require("wezterm")
local act = wz.action
local io = require("io")
local os = require("os")

local function is_hx(pane)
	local process_info = pane:get_foreground_process_info()
	local process_name = process_info and process_info.name

	return process_name == "hx"
end

local function find_hx_pane(tab)
	for _, pane in ipairs(tab:panes()) do
		if is_hx(pane) then
			return pane
		end
	end
end

local direction_keys = {
	Left = "c",
	Down = "i",
	Up = "e",
	Right = "a",
	-- reverse lookup
	c = "Left",
	i = "Down",
	e = "Up",
	a = "Right",
}

local function split_nav(resize_or_move, key)
	return {
		key = key,
		mods = resize_or_move == "resize" and "META" or "CTRL",
		action = wz.action_callback(function(win, pane)
			if is_hx(pane) then
				-- pass the keys through to vim/nvim
				win:perform_action({
					SendKey = {
						key = key,
						mods = resize_or_move == "resize" and "META" or "CTRL",
					},
				}, pane)
			else
				if resize_or_move == "resize" then
					win:perform_action(
						{ AdjustPaneSize = { direction_keys[key], 3 } },
						pane
					)
				else
					win:perform_action(
						{ ActivatePaneDirection = direction_keys[key] },
						pane
					)
				end
			end
		end),
	}
end
-- local keys = {}

wz.on("open-hx-with-scrollback", function(window, pane)
	local scrollback_text =
		pane:get_lines_as_text(pane:get_dimensions().scrollback_rows)

	local filename = os.tmpname()
	local f = io.open(filename, "w+")
	if f ~= nil then
		f:write(scrollback_text)
		f:flush()
		f:close()
		-- Helix (and other Homebrew-installed things) aren't in WezTerm's pretty minimal PATH,
		-- so we instead spawn the default shell and manually open hx from there.
		local _, new_pane, _ = window:mux_window():spawn_tab({})
		new_pane:send_text(wz.shell_join_args({ "hx", filename }) .. " ; exit\n")
		-- wz.mux_window.window.set_title("Scrollback for "..pane.get_title())
		new_pane:send_text("ge") -- goto end of file

		-- Wait "enough" time for the editor to read the file before removing it.
		-- (Reading the file is asynchronous and not awaitable.)
		wz.sleep_ms(1000)
		os.remove(filename)
	end
end)

local config = {
	-- Font
	font = wz.font_with_fallback({
		"JetBrains Mono",

		-- For Symbols
		{ family = "Symbols Nerd Font Mono", scale = 0.8 },
		{ family = "PowerlineSymbols", scale = 0.8 },
		{ family = "Noto Color Emoji", scale = 0.8 },
	}),

	font_size = 13.0,
	allow_square_glyphs_to_overflow_width = "WhenFollowedBySpace",
	adjust_window_size_when_changing_font_size = false,
	warn_about_missing_glyphs = false,

	-- Colors
	color_scheme = "@d.theme@",

	-- Cursor
	default_cursor_style = "BlinkingBlock",
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",
	cursor_blink_rate = 500,

	scrollback_lines = 10000,

	-- https://sw.kovidgoyal.net/kitty/keyboard-protocol/
	-- note that this seems to cause del to be backspace?!!?
	-- enable_kitty_keyboard = true,

	-- Window
	enable_wayland = false,
	window_padding = {
		left = "1cell",
		right = "1cell",
		top = "0cell",
		bottom = "0cell",
	},

	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",

	-- Tabs
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,

	-- Keybindings
	-- disable_default_key_bindings = false,
	keys = {
		{
			key = "o",
			mods = "CTRL|ALT",
			action = act.EmitEvent("open-hx-with-scrollback"),
		},

		-- move between split panes
		split_nav("move", "h"),
		split_nav("move", "j"),
		split_nav("move", "k"),
		split_nav("move", "l"),

		-- resize panes
		split_nav("resize", "h"),
		split_nav("resize", "j"),
		split_nav("resize", "k"),
		split_nav("resize", "l"),

		-- split panes
		{
			key = "-",
			mods = "META",
			action = wz.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "\\",
			mods = "META",
			action = wz.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},

		-- Rename tab
		{
			key = "r",
			mods = "CMD",
			action = wz.action.PromptInputLine({
				description = "Enter new name for tab",
				action = wz.action_callback(function(window, _, line)
					if line then
						window:active_tab():set_title(line)
					end
				end),
			}),
		},

		-- Toggle zoom for neovim
		{
			key = ",",
			mods = "CMD",
			action = wz.action_callback(function(window, pane)
				local tab = window:active_tab()

				-- Open pane below if current pane is vim
				if is_hx(pane) then
					if (#tab:panes()) == 1 then
						-- Open pane below if when there is only one pane and it is vim
						pane:split({ direction = "Bottom" })
					else
						-- Send `CTRL-; to vim`, navigate to bottom pane from vim
						window:perform_action({
							SendKey = { key = ",", mods = "CMD" },
						}, pane)
					end
					return
				end

				-- Zoom to vim pane if it exists
				local vim_pane = find_hx_pane(tab)
				if vim_pane then
					vim_pane:activate()
					tab:set_zoomed(true)
				end
			end),
		},

		-- Workspaces manager
		{
			key = "W",
			mods = "CMD|SHIFT",
			action = wz.action.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }),
		},
	},
}

-- MacOS overrides
if string.match(wz.target_triple, "apple") then
	config.window_decorations = "TITLE | RESIZE"

	-- 	Use Command instead of Ctrl on MacOS
	-- 	for k, v in pairs(config.keys) do
	-- 		v.mods = string.gsub(v.mods, "CTRL", "CMD")
	-- 	end
end

return config
