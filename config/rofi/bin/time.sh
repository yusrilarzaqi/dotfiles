#!/usr/bin/env bash

rofi_command="rofi -theme $HOME/.dotfiles/config/rofi/themes/applet/time/time.rasi"

## Get time and date
#TIME="$(date "+%I:%M:%S %p")"
# HOUR="$(date "+%I")"
# MINUTES="$(date "+%M")"
# SECONDS="$(date "+%S")"

# DN=$(date "+%A")
# MN=$(date "+%B")
DAY="$(date "+%d")"
MONTH="$(date "+%m")"
YEAR="$(date "+%Y")"

options="$DAY\n$MONTH\n$YEAR"

## Main
# chosen="$(echo -e "$options" | $rofi_command -p " $DN $TIME" -dmenu -selected-row 1)"
echo -e "$options" | $rofi_command -p "$(python3 ~/.dotfiles/config/rofi/test/main.py)" -dmenu -selected-row 1

# rofi -e "$(python3 -m calendar $YEAR $MONTH)" -theme ~/.dotfiles/config/rofi/themes/applet/time/time1.rasi
# rofi -e "$(python3 ~/.dotfiles/config/rofi/test/main.py)" -theme ~/.dotfiles/config/rofi/themes/applet/time/time1.rasi
# $rofi_command -e "$(python3 ~/.dotfiles/config/rofi/test/main.py)"
