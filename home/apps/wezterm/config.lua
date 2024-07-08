local wz = require("wezterm")
local act = wz.action
local io = require 'io'
local os = require 'os'

wz.on('open-hx-with-scrollback', function(window, pane)
  local scrollback_text = pane:get_lines_as_text(pane:get_dimensions().scrollback_rows)

  local filename = os.tmpname()
  local f = io.open(filename, 'w+')
  f:write(scrollback_text)
  f:flush()
  f:close()

  -- Helix (and other Homebrew-installed things) aren't in WezTerm's pretty minimal PATH,
  -- so we instead spawn the default shell and manually open hx from there.
  local _, new_pane, _ = window:mux_window():spawn_tab {}
  new_pane:send_text(wz.shell_join_args{'hx', filename} .. ' ; exit\n')
  -- wz.mux_window.window.set_title("Scrollback for "..pane.get_title())
  new_pane:send_text('ge') -- goto end of file

  -- Wait "enough" time for the editor to read the file before removing it.
  -- (Reading the file is asynchronous and not awaitable.)
  wz.sleep_ms(1000)
  os.remove(filename)
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
		left = "0cell",
		right = "0cell",
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
			mods = "ALT",
			action = act.EmitEvent("open-hx-with-scrollback"),
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
