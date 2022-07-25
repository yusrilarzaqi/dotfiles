#!/bin/bash
LOCATION="Ungaran"
main() {
  curl -sL wttr.in/$LOCATION\?format="%f&lang=id" | sed 's/+//g'
  # curl -sL wttr.in/Semarang\?format=1 | awk '{print $1}'
}
main
