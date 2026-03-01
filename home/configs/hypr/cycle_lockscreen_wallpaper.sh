#!/bin/bash

WALLPAPER_DIR="/home/som/pictures/wallpapers"
CONFIG_FILE="/home/som/.config/hypr/hyprlock.conf"

# Get random wallpaper
WALLPAPERS=($(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \)))
RANDOM_WALLPAPER=${WALLPAPERS[$RANDOM % ${#WALLPAPERS[@]}]}

# Update hyprlock config with new wallpaper
sed -i "s|path = /home/som/pictures/wallpapers/.*|path = $RANDOM_WALLPAPER|" "$CONFIG_FILE"

echo "Updated lockscreen wallpaper to: $(basename "$RANDOM_WALLPAPER")"