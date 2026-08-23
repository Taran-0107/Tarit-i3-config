#!/bin/bash

DESKTOPS=$(xdotool getactivewindow)
WN=$(xdotool getwindowpid $DESKTOPS)
i3-msg "move container to workspace f$WN; workspace f$WN"



