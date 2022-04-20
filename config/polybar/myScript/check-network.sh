#!/usr/bin/env bash

count=0
connected="直"
disconnected="睊"

ID="$(ip link | awk '/state UP/ {print $2}')"
ssid="$(iwgetid -r)"

# while true; do
#     if (ping -c 1 archlinux.org || ping -c 1 google.com || ping -c 1 bitbucket.org || ping -c 1 github.com || ping -c 1 sourceforge.net) &>/dev/null; then
#         if [[ $ID == e* ]]; then
#             echo "$connected $ssid" ; sleep 1
#         else
#             echo "$connected $ssid" ; sleep 1
#         fi
#     else
#         echo "$disconnected offline" ; sleep 1
#     fi
# done
if (ping -c 1 archlinux.org || ping -c 1 google.com || ping -c 1 bitbucket.org || ping -c 1 github.com || ping -c 1 sourceforge.net) &>/dev/null; then
    if [[ $ID == e* ]]; then
        echo "$connected $ssid" ; 
    else
        echo "$connected $ssid" ;
    fi
else
    echo "$disconnected offline" ;
fi
