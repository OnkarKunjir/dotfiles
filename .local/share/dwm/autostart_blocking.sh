#!/usr/bin/env bash
# feh --bg-scale /home/onkar/Pictures/orange_theme.jpg
# nitrogen --restore

wallpaper_image="$HOME/Pictures/wallpapers/citynight.png"

picom --experimental-backends &
dunst &
/home/onkar/.local/bin/dwm_bar &
# redshift &
/home/onkar/.local/bin/wallpaper "$wallpaper_image" &
