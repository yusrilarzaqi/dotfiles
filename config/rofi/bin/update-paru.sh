#!/bin/bash

DIR="$HOME/.dotfiles/config/rofi/themes/applet/other/"
DATA="$(paru -Qua | awk '{ print $1 }')"
ROFI_COMMAND="rofi -theme $DIR/check-update.rasi"
OPTIONS="YES\nNo"

# ask password
ask_password() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
    -password\
		-p "Password : "\
		-theme $DIR/../wifi/ask_password.rasi
}

CHOSEN="$(echo -e "$OPTIONS" | $ROFI_COMMAND -p "$DATA" -dmenu -selected-row 0)"

case $CHOSEN in
  "YES")
    PASSWD=$(ask_password &)
    echo  $PASSWD | sudo -S pamac update
    # paru -Syyyu
    ;;
  "NO")
    ;;
esac
