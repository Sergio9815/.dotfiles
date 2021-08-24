#!/bin/bash

#########################################
# SHAMELESS RIPOFF FROM ANOTHER GUY LUL #
#########################################

pkill dunst
dunst -config ~/.config/dunst/dunstrc &

notify-send -i ~/.config/dunst/icons/critical.svg -u critical "HOLY CRAP UR SYSTEM GONNA BLOW UP"
notify-send -i ~/.config/dunst/icons/low.svg -u low "Nah, chill man it's just a reload"
