#!/bin/bash

CALENDAR=$(python3 ./main.py)

rofi -e $CALENDAR -theme ./test.rasi
