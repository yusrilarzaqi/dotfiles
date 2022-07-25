#!/bin/bash

rofi_command="rofi -theme $HOME/.config/rofi/themes/openbox/battery/battery.rasi"

## Get data
BATTERY="$(acpi | awk -F ' ' '{print $4}' | tr -d \%,)"
CHARGE="$(acpi | awk -F ' ' '{print $3}' | tr -d \,)"

# ICON
if [[ $CHARGE = "Charging" ]]; then
  ICON="" 
elif [[ $BATTERY -ge 0 ]] && [[ $BATTERY -le 9 ]]; then
  ICON=""
elif [[ $BATTERY -ge 10 ]] && [[ $BATTERY -le 19 ]]; then
  ICON=""
elif [[ $BATTERY -ge 20 ]] && [[ $BATTERY -le 29 ]]; then
  ICON=""
elif [[ $BATTERY -ge 30 ]] && [[ $BATTERY -le 39 ]]; then
  ICON=""
elif [[ $BATTERY -ge 40 ]] && [[ $BATTERY -le 49 ]]; then
  ICON=""
elif [[ $BATTERY -ge 50 ]] && [[ $BATTERY -le 59 ]]; then
  ICON=""
elif [[ $BATTERY -ge 60 ]] && [[ $BATTERY -le 69 ]]; then
  ICON=""
elif [[ $BATTERY -ge 70 ]] && [[ $BATTERY -le 79 ]]; then
  ICON=""
elif [[ $BATTERY -ge 80 ]] && [[ $BATTERY -le 89 ]]; then
  ICON=""
elif [[ $BATTERY -ge 90 ]] && [[ $BATTERY -le 94 ]]; then
  ICON=""
elif [[ $BATTERY -ge 95 ]] && [[ $BATTERY -le 100 ]]; then
  ICON=""
fi

$rofi_command -p "$ICON $BATTERY%" -dmenu 
