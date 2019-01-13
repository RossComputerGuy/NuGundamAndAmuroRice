#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

function bars {
    MONITOR=$1 polybar top -r &
}

bars LVDS-0
bars VGA-0
bars HDMI-0
