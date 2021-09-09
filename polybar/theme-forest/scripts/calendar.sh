#!/usr/bin/env bash

## ================================
##    Author  : Sergio Gonzalez
##    Github  : @Sergio9815
## ================================

## Dependencies
##    - cal / ncal
##    - rofi

dir="~/.config/polybar/forest/scripts/rofi"

TODAY="$(date +%d)"
MONTH="$(date +%-m)"
YEAR="$(date +%Y)"

current() {
  ncal -b -h | rofi -theme $dir/calendar.rasi -dmenu -p "My Calendar | Day: $TODAY |"
}

next() {
  ncal -b -h -m "$(($MONTH + 1))" | rofi -theme $dir/calendar.rasi -dmenu -p "My Calendar | Next  |"
}

previous() {
  ncal -b -h -m "$(($MONTH - 1))" | rofi -theme $dir/calendar.rasi -dmenu -p "My Calendar | Prev  |"
}

all() {
  ncal -y -b -h | rofi -theme $dir/calendarAll.rasi -dmenu -p "My Calendar | Year: $YEAR"
}

case $1 in
	"curr") current;;
  "next") next;;
  "prev") previous;;
  "all") all;;
esac