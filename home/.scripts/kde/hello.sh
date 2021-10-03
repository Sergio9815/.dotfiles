#!/usr/bin/sh

# Dependencies:
#  --> notify-send 

NAME="Sergio"
APPNAME=609

datey=$(date +%H)

if [ "$datey" -ge 06 ] && [ "$datey" -le 11 ] 
then
    notify-send -i ~/.config/dunst/icons/charmander.svg "Good Morning" "$NAME!" 
elif [ "$datey" -ge 12 ] && [ "$datey" -le 17 ] 
then
    notify-send  -i ~/.config/dunst/icons/pikachu.svg "Good Afternoon" "$NAME!"
elif [ "$datey" -ge 18 ] && [ "$datey" -le 23 ] 
then
    notify-send  -i ~/.config/dunst/icons/squirtle.svg "Good Evening" "$NAME!" 
else 
    notify-send  -i ~/.config/dunst/icons/venonat.svg "Demons are watching you..."
fi
