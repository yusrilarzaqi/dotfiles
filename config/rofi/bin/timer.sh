#!/bin/bash
 
ask_time() {
	rofi -dmenu\
		-i\
		-p "Timer : "\
		-no-fixed-num-lines\
		-theme $HOME/.dotfiles/config/rofi/themes/applet/timer/timer2.rasi
}


TIME=$(ask_time &)
HOURS=$(echo $TIME | awk '{print $1}')
MINUTES=$(echo $TIME | awk '{print $2}')
SECONDS=$(echo $TIME | awk '{print $3}')

# notify-send "SET TIMER" "$MINUTES minutes $SECONDS seconds" -i "sand-clock-white"
~/bin/timer $HOURS $MINUTES $SECONDS
