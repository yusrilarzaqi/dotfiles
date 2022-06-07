#!/bin/bash

data=$(paru -Qua | awk '{print $1}')

dunstify -a "Paru-Update" "Paru Update" -u low -r "9991" "${data}"
