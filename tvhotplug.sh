#!/bin/bash
# allows my tv to be hotplugged and more importantly hot-disconnected
function ActivateTV {
  twmnc -c "Activating TV"
  xrandr --output HDMI-0 --mode 1360x768 --pos 4681x576
  echo "connected" > /home/omar/.tvstatus
  i3 reload
}

function DeactivateTV {
  twmnc -c "Deactivating TV"
  xrandr --output HDMI-0 --off
  echo "disconnected" > /home/omar/.tvstatus
  # this effs up everything so i need to get it to uneff it
  /home/omar/bin/monitorsetup.sh
  i3 reload
}

function CheckTV {
  newstatus=$(tac /var/log/Xorg.0.log | grep 'DFP-1' | grep -m1 -o -E 'connected|disconnected')
  curstatus=$(cat /home/omar/.tvstatus)
  if [ $newstatus == $curstatus ]
  then	
	# nothing to do
	:
  elif [ $newstatus == "connected" ]
  then
	# we know one is dc and one is connected, and the new one is connected,
	# so...
	ActivateTV
  else
	# now we know tv has been turned off!
	DeactivateTV
  fi
}

while true
do
  CheckTV
  sleep 10s
done
