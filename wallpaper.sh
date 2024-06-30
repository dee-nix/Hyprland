#!/bin/bash

wallpaper() {

    monitor="eDP-1"

    directory="$HOME/Pictures/Wallpapers"

    wallpapers=($directory/*)

    random=("${wallpapers[RANDOM % ${#wallpapers[@]}]}")

    hyprctl hyprpaper wallpaper "$monitor,$random"

}

wallpaper
