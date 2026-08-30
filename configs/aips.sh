#!/bin/bash

src=$(pactl get-default-source)

src_port=$(
    pactl list sources |
    awk "
        /^Source #/ { found=0 }
        /Name: $src/ { found=1 }
        found && /Active Port:/ { print \$3; exit }
    "
)

if [ "$src_port" = "analog-input-headset-mic" ]; then
	pactl set-source-port $src analog-input-internal-mic

else
	pactl set-source-port $src analog-input-headset-mic
fi



#echo "$src $src_port"
