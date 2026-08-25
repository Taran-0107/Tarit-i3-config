#!/bin/bash

echo installing config files...

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


mkdir -p ~/.config/kitty

mkdir -p ~/.config/i3

mkdir -p ~/.config/polybar

mkdir -p ~/.config/compton

mkdir -p ~/.local/share/fonts

mkdir -p ~/.local/share/rofi/themes

mkdir -p ~/.icons

mkdir -p ~/.config/rofi

cp $SCRIPT_DIR/configs/polybar.ini ~/.config/polybar/config.ini
cp $SCRIPT_DIR/configs/kitty.conf ~/.config/kitty/kitty.conf
cp $SCRIPT_DIR/configs/compton.conf ~/.config/compton/c.conf
cp $SCRIPT_DIR/configs/i3config ~/.config/i3/config
cp -r $SCRIPT_DIR/configs/wallpapers ~/wallpapers
cp $SCRIPT_DIR/configs/i3move.sh ~/.config/i3/move.sh
cp $SCRIPT_DIR/fonts/nerdfont.ttf ~/.local/share/fonts/nerdfont.ttf
cp $SCRIPT_DIR/rofi/material.rasi ~/.local/share/rofi/themes/material.rasi
cp -r $SCRIPT_DIR/cursors/. ~/.icons/
cp $SCRIPT_DIR/configs/roficonfig.rasi ~/.config/rofi/config.rasi
echo "config files installed! (0w0)"
