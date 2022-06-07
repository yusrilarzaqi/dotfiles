#!/bin/bash

function send_notification() {
	volume=$(pamixer --get-volume)
	dunstify -a "changevolume" -u low -r "9993" -h int:value:"$volume" -i "audio-volume-$1" "Volume: ${volume}%" -t 2000
}

case $1 in
up)
	# Set the volume on (if it was muted)
	pamixer -u
	pamixer -i 5 --allow-boost
	send_notification "high"
	;;
down)
	pamixer -u
	pamixer -d 5 --allow-boost
	send_notification "low"
	;;
mute)
	pamixer -t
	if $(pamixer --get-mute); then
		dunstify -i player-volume-muted -a "changevolume" -t 2000 -r 9993 -u low "Muted"
	else
		send_notification "high"
	fi
	;;
micMute)
  pactl set-source-mute @DEFAULT_SOURCE@ toggle
  if [[ $(amixer get Capture | awk '/Front Left:/ {print $6}' | sed 's/]//g' | sed 's/\[//g') == "on" ]]; then
    dunstify -i mic-unmute-2 -a "changevolume" -t 2000 -r 9993 -u low "Mic Unmute"
  else
    dunstify -i mic-mute -a "changevolume" -t 2000 -r 9993 -u low "Mic Muted"
  fi
  ;;
esac
