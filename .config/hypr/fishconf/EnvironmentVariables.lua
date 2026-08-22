-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

-- Qt
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1") -- enables automatic scaling, based on the monitor’s pixel density
hl.env("QT_QPA_PLATFORM", "wayland;xcb") -- Tell Qt applications to use the Wayland backend, and fall back to X11 if Wayland is unavailable
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

-- GTK
hl.env("GDK_BACKEND", "wayland,x11,*") -- GTK: Use Wayland if available; if not, try X11 and then any other GDK backend.

-- cursor
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "catppuccin-macchiato-mauve-cursors")

-- nvidia
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- electron
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- language
hl.env("LANG", "zh_CN.UTF-8")

-- editor
hl.env("EDITOR", "nvim")

-- 输入法
hl.env("XMODIFIERS", "@im=fcitx")

-- dolphin
hl.env("XDG_MENU_PREFIX", "arch-")
