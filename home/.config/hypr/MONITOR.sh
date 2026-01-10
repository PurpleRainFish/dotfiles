#!/bin/bash

LAPTOP_SCREEN="eDP-1"

if [ $(hyprctl monitors | grep "Monitor" | wc -l) -gt 1 ]; then
    hyprctl keyword monitor "$LAPTOP_SCREEN, disable"
fi

  
