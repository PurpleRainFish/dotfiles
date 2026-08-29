local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local altMod = "ALT" -- Sets "Windows" key as main modifier

-----
hl.bind("PRINT", hl.dsp.exec_cmd("flameshot gui"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("copyq toggle"))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("~/.config/hypr/scripts/switch_display.sh"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("zen-browser"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + F9", hl.dsp.exec_cmd("obs-cmd recording toggle"))
-----

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(altMod .. " + Q", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(
	mainMod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(altMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(altMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(altMod .. " + P", hl.dsp.window.pseudo())
-- hl.bind(altMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only
hl.bind(altMod .. " + C", hl.dsp.window.center())
hl.bind(altMod .. " + CTRL + T", hl.dsp.focus({ window = "tiled" }))
hl.bind(altMod .. " + CTRL + F", hl.dsp.focus({ window = "floating" }))
hl.bind(altMod .. " + W", hl.dsp.window.fullscreen())

-- Move focus with mainMod + arrow keys
hl.bind(altMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(altMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(altMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(altMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Move acttive window
hl.bind(altMod .. " + SHIFT + " .. "H", hl.dsp.window.move({ direction = "l" }))
hl.bind(altMod .. " + SHIFT + " .. "J", hl.dsp.window.move({ direction = "d" }))
hl.bind(altMod .. " + SHIFT + " .. "K", hl.dsp.window.move({ direction = "u" }))
hl.bind(altMod .. " + SHIFT + " .. "L", hl.dsp.window.move({ direction = "r" }))

-- scorlling
hl.bind(altMod .. " + R", hl.dsp.layout("colresize +conf"))
hl.bind(altMod .. " + comma", hl.dsp.layout("swapcol l"))
hl.bind(altMod .. " + period", hl.dsp.layout("swapcol r"))
--

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(altMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(altMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(altMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(altMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(altMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(altMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(altMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(altMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 2%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 2%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
