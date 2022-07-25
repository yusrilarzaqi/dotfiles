#!/usr/bin/env bash

rofi_command="rofi -theme $HOME/.config/rofi/themes/openbox/screenshot/screenshot.rasi"

# Options
# screen=" Screen"
screen=" Fullscreen"
area=" Area"
window="缾 Window"
launcher=" Launcher"

# Variable passed to rofi
options="$screen\n$area\n$window\n$launcher"

# chosen="$(echo -e "$options" | $rofi_command -p 'Flameshot' -dmenu -selected-row 1)"
chosen="$(echo -e "$options" | $rofi_command  -dmenu -selected-row 1)"
case $chosen in
	$screen)
		# sleep 1; scrot 'Screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f $$(xdg-user-dir PICTURES) ; viewnior $$(xdg-user-dir PICTURES)/$f'
		flameshot screen
	;;
	$area)
	# scrot -s 'Screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f $$(xdg-user-dir PICTURES) ; viewnior $$(xdg-user-dir PICTURES)/$f'
		flameshot gui
	;;
	$window)
		sleep 1; scrot -u 'Screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f $$(xdg-user-dir PICTURES) ; viewnior $$(xdg-user-dir PICTURES)/$f'
	;;
	$launcher)
		flameshot launcher
	;;
esac

