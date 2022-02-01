#!/usr/bin/env bash

condition=$(uptime -p | awk '{print $3}' | sed 's/,//g')
if [[ $condition == "day" || $condition == "days" ]]; then
  uptime -p | sed 's/up//g' | awk '{print $1"d " $3"h " $5"m"}'
elif [[ $condition == "hour" || $condition  == "hours" ]]; then
  uptime -p | sed 's/up//g' | awk '{print $1"h " $3"m"}'
elif [[ $condition == "minutes" || $condition == "minute" ]];  then
  uptime -p | sed 's/up//g' | awk '{print $1" "$2}'
fi
