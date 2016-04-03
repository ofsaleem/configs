#!/bin/bash
# sets up my monitors. hopefully the tv works hotpluggy 
xrandr --output DP-3 --mode 1680x1050 --rate 60 --pos 0x430 --output DP-0 --pos 1680x360 --rate 60 --primary --output DVI-I-1 --pos 3600x0 --rate 60 --rotate left --dpi 96x96 
# TV may not be on so we don't want the whole command to fail!
#xrandr --output HDMI-0 --mode 1360x768 --pos 4682x576



