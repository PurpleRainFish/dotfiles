local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 14 -- 字体大小
config.font = wezterm.font("Maple Mono NF CN") -- 字体
config.color_scheme = "Catppuccin Macchiato" -- 主题
config.use_fancy_tab_bar = false -- 花哨的bar
config.hide_tab_bar_if_only_one_tab = false -- 只有一个tab时隐藏
config.enable_scroll_bar = true -- 使用滑杆
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_close_confirmation = "NeverPrompt"

-- 行数和列数
config.initial_cols = 160
config.initial_rows = 40

config.adjust_window_size_when_changing_font_size = false

config.launch_menu = {}

config.keys = {
	{ key = "w", mods = "CTRL", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
	{ key = "t", mods = "CTRL|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
}
config.enable_wayland = false -- 不使用wayland前端，因为有bug

return config
