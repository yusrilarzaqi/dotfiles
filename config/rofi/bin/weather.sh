#!/bin/bash

# rofi_command="rofi -theme $HOME/.dotfiles/config/rofi/themes/applet/weather/weater1.rasi"
rofi_command="rofi -theme $HOME/.dotfiles/config/rofi/themes/applet/weather/weater2.rasi"
# CITY="Semarang"
CITY="Ungaran"

# weather=$(curl -sL wttr.in/$CITY\?0T | sed -n '3,10p')
weather=$(curl -sL "wttr.in/$CITY?0TQ&lang=id")

echo -e "$CITY" | $rofi_command -p "$weather" -dmenu
# $rofi_command -dmenu -i -no-fixed-num-lines -p "$weather"
