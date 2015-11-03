#!/bin/sh
FB_TYPE="$(grep '^0 ' /proc/fb | sed 's/[^[:space:]] //')"

if [ "$FB_TYPE" == "inteldrmfb" ]; then
   /usr/bin/xrandr -display :0 --output HDMI1 --set "Broadcast RGB" "Full"
   /usr/bin/xrandr -display :0 --output DP1 --off
fi
