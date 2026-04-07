#!/bin/bash

# --- 配置 ---
LAPTOP="eDP-1"
EXTERNAL="DP-1"
LP_SCALE="1.6"
EXT_SCALE="1.25"

MONITOR_COUNT=$(hyprctl monitors | grep -c "Monitor")

if [ "$MONITOR_COUNT" -gt 1 ]; then
    SCALE=$EXT_SCALE
    hyprctl keyword monitor "$EXTERNAL, 2560x1440@165.00, auto, $EXT_SCALE"
    hyprctl keyword monitor "$LAPTOP, disable"
else
    SCALE=$LP_SCALE
    hyprctl keyword monitor "$LAPTOP, 2560x1600@240.00, auto, $LP_SCALE"
    hyprctl keyword monitor "$EXTERNAL, disable"
fi

FINAL_DPI=$(echo "scale=1; $SCALE * 96" | bc)

echo "Xft.dpi: $FINAL_DPI" | xrdb -merge

echo "Scale set to $SCALE, precise DPI is $FINAL_DPI ✅"
