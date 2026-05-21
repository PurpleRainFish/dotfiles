#!/bin/bash

# --- 配置 ---

MONITOR_COUNT=$(hyprctl monitors all | grep -c "Monitor")

if [ "$MONITOR_COUNT" -gt 1 ]; then
    hyprctl dispatch 'hl.monitor({output = "DP-1", mode="2560x1440@165.00", position="auto", scale=1.25})'
    hyprctl dispatch 'hl.monitor({output = "eDP-1",disabled=true})'
    echo "Xft.dpi: 120" | xrdb -merge
else
    hyprctl dispatch 'hl.monitor({output = "eDP-1", mode="2560x1440@240.00", position="auto", scale=1.6})'
    echo "Xft.dpi: 153.6" | xrdb -merge
fi
