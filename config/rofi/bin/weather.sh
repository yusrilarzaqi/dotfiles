#!/bin/bash

# rofi_command="rofi -theme $HOME/.dotfiles/config/rofi/themes/applet/weather/weater.rasi"
rofi_command="rofi -theme $HOME/.dotfiles/config/rofi/themes/applet/weather/weater1.rasi"

weather=$(curl -sL wttr.in/Semarang\?0T | cut -d ":" -f2)

# $rofi_command -p "$weather" -dmenu -i -no-fixed-num-lines
$rofi_command -dmenu -i -no-fixed-num-lines -p "$weather"
