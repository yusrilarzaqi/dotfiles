#!/usr/bin/env bash

# style="$($HOME/junk/polybar-rofi/applet/)"

dir="$HOME/.config/rofi/themes/openbox/network"
# rofi_command="rofi -theme $dir/network.rasi"
rofi_command="rofi -theme $dir/network.rasi"

## Get info
# IFACE="$(nmcli | grep -i interface | awk '/interface/ {print $2}')"
IFACE="$(ip addr show wlp4s0 | awk '/inet/g {print $2}' | sed -n '3,3p' | awk -F '/' '{print $1}')"
SSID="$(iwgetid -r)"
#LIP="$(nmcli | grep -i server | awk '/server/ {print $2}')"
#PIP="$(dig +short myip.opendns.com @resolver1.opendns.com )"
STATUS="$(nmcli radio wifi)"

active=""
urgent=""

# if (ping -c 1 archlinux.org || ping -c 1 google.com || ping -c 1 bitbucket.org || ping -c 1 github.com || ping -c 1 sourceforge.net) &>/dev/null; then
if [[ $SSID ]]; then
	if [[ $STATUS == *"enable"* ]]; then
        if [[ $IFACE == e* ]]; then
            connected=" On $IFACE"
        else
            connected=" On $IFACE"
        fi
	active="-a 0"
	# SSID="﬉ $(iwgetid -r)"
	SSID="$(iwgetid -r)"
	# PIP="$(wget --timeout=30 http://ipinfo.io/ip -qO -)"
	# PIP="$(nmcli | grep -i server | awk '{print $2}')"
	PIP="$(ip a show wlp4s0 | awk '/inet/g {print $2}' | sed -n '3,3p')"
	fi
else
  urgent="-u 0"
  SSID="Disconnected "
  # PIP="Not Available"
  connected="睊 off"
fi

## Icons
# bmon=" "
# launch_cli=" "
# launch=" "

bmon=" Bmon"
launch_cli=" Nmtui"
launch=" NM Connection Editor"
info=" Infomation Network"

options="$connected\n$bmon\n$launch_cli\n$launch\n$info"
prompt="$SSID"

## Main
chosen="$(echo -e "$options" | $rofi_command -p "$prompt" -dmenu $active $urgent -selected-row 1)"
case $chosen in
  $connected)
    if [[ $STATUS == *"enable"* ]]; then
      nmcli radio wifi off
    else
      nmcli radio wifi on
    fi 
    ;;
  $bmon)
    kitty -e bmon
    ;;
  $launch_cli)
    kitty -e nmtui
    ;;
  $launch)
    nm-connection-editor
    ;;
  $info)
    ~/.config/rofi/bin/openbox/network_info.sh
    ;;
esac

