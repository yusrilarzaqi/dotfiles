#!/bin/bash

rofi_command="rofi -theme $HOME/.config/rofi/themes/openbox/network/info.rasi"

SSID=$(iwgetid -r)
IP_WIFI="$(ip a show wlp4s0 | awk '/inet/g {print $2}' | sed -n '3,3p')"

OPTION="$SSID\n$IP_WIFI"

echo -e "$OPTION" | $rofi_command -p "Information" -dmenu
