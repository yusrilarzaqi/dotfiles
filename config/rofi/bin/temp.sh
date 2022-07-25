#!/bin/bash

rofi_command="rofi -theme $HOME/.dotfiles/config/rofi/themes/applet/temp/temp.rasi"

temp=$(sensors | awk '/temp1/')

$rofi_command -dmenu -i -no-fixed-num-lines -p "$temp"
