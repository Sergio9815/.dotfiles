#!/usr/bin/env bash

dir="~/.config/polybar/forest/scripts/rofi"

DATE="$(date +%d)"
ncal -b -h | rofi -theme $dir/calendar.rasi -dmenu -p "My Calendar | Day: $DATE |"
