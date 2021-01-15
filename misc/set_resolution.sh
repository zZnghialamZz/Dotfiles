#!/bin/bash

# Set screen resolution
xrandr --newmode "2560x1440" 311.83 2560 2744 3024 3488  1440 1441 1444 1490  -HSync +Vsync
xrandr --addmode Virtual-1 "2560x1440"
xrandr --output Virtual-1 --primary --mode "2560x1440" --pos 0x0 --rotate normal
