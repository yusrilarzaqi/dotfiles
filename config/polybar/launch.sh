#!/usr/bin/env sh

# Termite alredy running bar instances
killall -q polybar

# Wait until The processes have been shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1;done

# Launch example bar
polybar Top &

