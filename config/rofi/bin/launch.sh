#!/bin/bash

dir="~/.dotfiles/config/rofi/themes/applet/"

confirm_exit() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Are You Sure? : "\
		-theme $dir/confirm.rasi
}

echo "$(confirm_exit)"
