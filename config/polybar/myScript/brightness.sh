#!/usr/bin/env bash

brightnessctl i | awk '/Current/ {print $4}' | sed 's/(//g' | sed 's/)//g'
