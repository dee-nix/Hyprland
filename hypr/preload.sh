#!/bin/bash

preload() {

    monitor="eDP-1"

    directory="$HOME/Pictures/Wallpapers"

    wallpapers=$(find "$directory" -type f | sort -R )

    for wallpaper in $wallpapers; do

        preload+="preload = "$wallpaper"\n"
        wallpaperz+="wallpaper = $monitor, $wallpaper\n"

    done

    echo -en "$preload\n$wallpaperz" > ~/.config/hypr/hyprpaper.conf

}

preload
