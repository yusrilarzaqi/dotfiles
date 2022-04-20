#!/usr/bin/env bash

DIR="$HOME/.config/rofi/"
theme="budgie"

launcher() {
	rofi -no-config -no-lazy-grab -show drun -modi drun -theme "$DIR"/"$theme"/launcher.rasi
}
launcher

