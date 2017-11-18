#!/bin/bash
# sets up my monitors. hopefully the tv works hotpluggy 
#xrandr --output DP-3 --mode 1680x1050 --rate 60 --pos 0x430 --output DP-0 --pos 1680x360 --rate 60 --primary --output DVI-I-1 --pos 3600x0 --rate 60 --rotate left --dpi 96x96 
# TV may not be on so we don't want the whole command to fail!
#xrandr --output HDMI-0 --mode 1360x768 --pos 4682x576

# new setup
#
xrandr --output DVI-I-1 --mode 1920x1080 --rotate normal --pos 0x500 --output DP-0 --pos 1920x350 --primary --output HDMI-0 --mode 1920x1080 --pos 3840x00 --rotate left

sleep 30
nvidia-settings --assign CurrentMetaMode="DVI-I-1: nvidia-auto-select +0+500 {rotation=normal, ForceFullCompositionPipeline = On }, DP-0: nvidia-auto-select +1920+350 { ForceFullCompositionPipeline = On }, HDMI-0: nvidia-auto-select +3840+0 { rotation=left, ForceFullCompositionPipeline = On }"

