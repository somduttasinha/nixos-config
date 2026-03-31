#!/bin/bash

WALLPAPER_DIR="/home/som/pictures/wallpapers"

# Wait for swww-daemon to be ready
sleep 2

WALLPAPERS=($(find -L "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \)))

# Set a different random wallpaper on each monitor
for output in $(swww query | awk '{print $2}' | tr -d ':'); do
    RANDOM_WALLPAPER=${WALLPAPERS[$RANDOM % ${#WALLPAPERS[@]}]}
    swww img --outputs "$output" "$RANDOM_WALLPAPER"
    echo "Set $output wallpaper to: $(basename "$RANDOM_WALLPAPER")"
done