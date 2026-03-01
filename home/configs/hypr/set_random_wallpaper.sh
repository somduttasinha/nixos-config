#!/bin/bash

WALLPAPER_DIR="/home/som/pictures/wallpapers"

# Wait for swww-daemon to be ready
sleep 2

# Get random wallpaper
WALLPAPERS=($(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \)))
RANDOM_WALLPAPER=${WALLPAPERS[$RANDOM % ${#WALLPAPERS[@]}]}

# Set wallpaper with swww
swww img "$RANDOM_WALLPAPER"

echo "Set desktop wallpaper to: $(basename "$RANDOM_WALLPAPER")"