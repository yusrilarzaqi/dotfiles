#!/bin/bash

LOCATION="Semarang"


# fetch_weather_information() {
#   curl -sL wttr.in/$LOCATION\?format=%f | sed 's/+//g'
# }

condition() {
  curl -sL wttr.in/$LOCATION\?format=%C
}

display_icon() {
  x=$(condition)
  if [[ $x == "Sunny" ]]; then
    # echo '☀ '
    echo ""
  elif [[ $x == "Snow" ]]; then
    echo '❄ '
  # elif [[ $x == 'Rain' ]]; then
  elif [[ $(curl -sL wttr.in/$LOCATION?format=%C | awk '/rain/') ]]; then
    echo ""
  elif [[ $x == "Cloud" || $(curl -sL wttr.in/$LOCATION?format=%C | awk '/cloudy/') ]]; then
    echo ""
  else
    # echo ""
    echo ""
  fi
}

main() {
  # temp=$(fetch_weather_information)
  icon=$(display_icon)
  echo "$icon"

  # echo "$icon $temp"
}
#
main
