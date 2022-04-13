#!/usr/bin/env bash

DIR="$HOME/.config/polybar"
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q bspwm -c "$DIR"/config.ini &
polybar -q xwindow -c "$DIR"/config.ini &
polybar -q volume -c "$DIR"/config.ini &
polybar -q brightness -c "$DIR"/config.ini &
polybar -q battery -c "$DIR"/config.ini &
polybar -q wlan -c "$DIR"/config.ini &
polybar -q date -c "$DIR"/config.ini &
