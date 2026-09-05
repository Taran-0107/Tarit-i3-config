#!/bin/bash

echo saving config files....

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p $SCRIPT_DIR/configs
mkdir -p $SCRIPT_DIR/rofi
mkdir -p $SCRIPT_DIR/fonts
mkdir -p $SCRIPT_DIR/cursors
mkdir -p $SCRIPT_DIR/resources
mkdir -p $SCRIPT_DIR/power

cp ~/.vimrc $SCRIPT_DIR/configs/.vimrc
cp -r ~/.config/power/. $SCRIPT_DIR/power/
cp ~/.config/btop/btop.conf $SCRIPT_DIR/configs/btop.conf
cp ~/.config/flameshot/flameshot.ini $SCRIPT_DIR/configs/flameshot.ini
cp ~/.config/polybar/restart.sh $SCRIPT_DIR/configs/restart.sh
cp ~/.config/getauico.sh $SCRIPT_DIR/configs/getauico.sh
cp ~/.config/aips.sh $SCRIPT_DIR/configs/aips.sh
cp ~/.config/polybar/config.ini $SCRIPT_DIR/configs/polybar.ini
cp ~/.config/kitty/kitty.conf $SCRIPT_DIR/configs/kitty.conf
cp ~/.config/compton/c.conf $SCRIPT_DIR/configs/compton.conf
cp ~/.config/i3/config $SCRIPT_DIR/configs/i3config
cp -r ~/wallpapers/. $SCRIPT_DIR/configs/wallpapers/
cp ~/.config/i3/move.sh $SCRIPT_DIR/configs/i3move.sh
cp ~/.local/share/fonts/nerdfont.ttf $SCRIPT_DIR/fonts/nerdfont.ttf
cp ~/.local/share/rofi/themes/material.rasi $SCRIPT_DIR/rofi/material.rasi
cp -r ~/.icons/. $SCRIPT_DIR/cursors/
cp ~/.config/rofi/config.rasi $SCRIPT_DIR/configs/roficonfig.rasi
cp ~/.Xrsources $SCRIPT_DIR/resources/.Xresources

echo "all current config files saved to to github folder, commit and push to upload changes :)"
