#!/bin/bash

function send_notification() {
	# brightness=$(printf "%.0f\n" $(brillo -G))
  brightness=$(brightnessctl i | awk '/Current/ {print $4}' | sed 's/(//g' | sed 's/)//g')
	dunstify -a "changebrightness" -u low -r 9991 -h int:value:"$brightness" -i "brightness-$1" "Brightness: $brightness" -t 2000
}

case $1 in
up)
	# brillo -A 5 -q
  brightnessctl set +2%
	send_notification $1
	;;
down)
	# brillo -U 5 -q
  brightnessctl set 2%-
	send_notification $1
	;;
esac
