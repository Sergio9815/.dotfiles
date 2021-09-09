#!/usr/bin/env bash

## ================================
##    Author  : Sergio Gonzalez
##    Github  : @Sergio9815
## ================================

## Dependencies
##    - cal / ncal
##    - rofi
##    - nerd fonts: CaskaydiaCove, Meslo, etc..

dir="~/.config/polybar/forest/scripts/rofi"

TODAY="$(date +%d)"
MONTH="$(date +%-m)"

uppercase() {
  string="$(date "+%a, %b %d %Y")"
  first=`echo $string|cut -c1|tr [a-z] [A-Z]`
  second=`echo $string|cut -c2-`
  DATE=$first$second
}

current() {
  ncal -b -h | rofi -theme $dir/calendar.rasi -dmenu -p "My Calendar ﲯﲯ Day $TODAY"
}

next() {
  ncal -b -h -m "$(($MONTH + 1))" | rofi -theme $dir/calendar.rasi -dmenu -p "My Calendar ﲯﲯ Next "
}

previous() {
  ncal -b -h -m "$(($MONTH - 1))" | rofi -theme $dir/calendar.rasi -dmenu -p "My Calendar ﲯﲯ Prev "
}

all() {
  uppercase
  ncal -y -b -h | rofi -theme $dir/calendarAll.rasi -dmenu -p "My Calendar ﲯﲯ $DATE   "
}

case $1 in
	"curr") current;;
  "next") next;;
  "prev") previous;;
  "all") all;;
esac