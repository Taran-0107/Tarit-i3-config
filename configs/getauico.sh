#!/bin/bash

src=$(pactl get-default-source)
mute=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')
src_port=$(
    pactl list sources |
    awk "
        /^Source #/ { found=0 }
        /Name: $src/ { found=1 }
        found && /Active Port:/ { print \$3; exit }
    "
)

if [ "$src_port" = "analog-input-headset-mic" ]; then
	if [ "$mute" = "no" ]; then
		echo "󰋎"
	else
		echo "󰋐"
	fi
else
	if [ "$mute" = "no" ]; then
		echo "󰍬"
	else
		echo "󰍭"
	fi

fi

echo "$mute"
