#!/bin/sh

#!/bin/bash

IN="LVDS1"
EXT="VGA1"
HDMI="HDMI1"

if (xrandr | grep "$EXT disconnected"); then
    xrandr --output $IN --auto --output $EXT --off --output $HDMI --off --output VIRTUAL1 --off
else
    xrandr --output $HDMI --off --output $IN --mode 1366x768 --pos 1600x172 --rotate normal --output VIRTUAL1 --off --output DP1 --off --output $EXT --mode 1600x900 --pos 0x0 --rotate normal
fi
