#!/bin/bash
# sets up my monitors. hopefully the tv works hotpluggy 
xrandr --setprovideroutputsource modesetting NVIDIA-0 \
 --output HDMI-1-1 --mode 1680x1050 --rate 60 --pos 0x430 \
 --output DVI-I-1 --pos 1680x360 --rate 60 --primary \
 --output DVI-D-0 --pos 3601x0 --rate 60 --rotate left
# TV may not be on so we don't want the whole command to fail!
#xrandr --output HDMI-0 --mode 1360x768 --pos 4682x576

