#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"
CACHE_FILE="$HOME/.cache/current_wallpaper_index"

# Ensure the cache directory exists
mkdir -p "$(dirname "$CACHE_FILE")"

# Find all wallpapers and sort them alphabetically so the order is consistent
mapfile -t WALLPAPERS < <(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | sort)

TOTAL_WALLPAPERS=${#WALLPAPERS[@]}

if [ "$TOTAL_WALLPAPERS" -eq 0 ]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

# Read the current index from the cache file (default to 0 if it doesn't exist)
if [ -f "$CACHE_FILE" ]; then
    INDEX=$(cat "$CACHE_FILE")
    # Make sure it's a valid integer
    [[ "$INDEX" =~ ^[0-9]+$ ]] || INDEX=0
else
    INDEX=0
fi

# Apply the current wallpaper
feh --bg-fill "${WALLPAPERS[$INDEX]}"

# Increment the index for the next press. 
# The modulo operator (%) ensures it wraps back to 0 after reaching the last wallpaper.
NEXT_INDEX=$(( (INDEX + 1) % TOTAL_WALLPAPERS ))

# Save the new index back to the cache file
echo "$NEXT_INDEX" > "$CACHE_FILE"
