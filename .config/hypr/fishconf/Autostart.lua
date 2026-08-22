-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
-- hl.on("hyprland.start", function ()
--   hl.exec_cmd(terminal)
--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)

hl.on("hyprland.start", function()
	hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("flclash")
	hl.exec_cmd("qs -c noctalia-shell")
	hl.exec_cmd("sleep 1 && " .. terminal)
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("fcitx5")
	hl.exec_cmd("wl-paste --type text --watch cliphist store && wl-paste --type image --watch cliphist store")
	hl.exec_cmd("copyq")
	hl.exec_cmd("blueman-applet")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("sleep 5 && rclone mount remote: ~/OneDrive --vfs-cache-mode full")
	hl.exec_cmd("~/.config/hypr/scripts/switch_display.sh")
end)
