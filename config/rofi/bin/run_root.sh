#!/bin/bash

DIR="$HOME/.dotfiles/config/rofi/themes/applet/other/"

# ask password
ask_password() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Password : "\
		-theme $DIR/../wifi/ask_password.rasi
}

cmd() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Command : "\
		-theme $DIR/../wifi/ask_password.rasi
}

command=$(cmd &)
echo $(ask_password &) | sudo -S $command
