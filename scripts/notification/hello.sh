#!/usr/bin/sh

# Frenzy's totally not stolen (liar) from someone else welcome script

# This lil script gives you a warm welcome cuz it feels good to not feel alone XD

# Dependencies:
# dunstify

# ~/.scripts

NAME="Sergio"
APPNAME=609

datey=$(date +%H)

if [ "$datey" -ge 6 ] && [ "$datey" -le 11 ] 
then
    dunstify -i ~/.config/dunst/icons/star_stars.svg "Good Morning!" "$NAME!" -u low
elif [ "$datey" -ge 12 ] && [ "$datey" -le 17 ] 
then
    dunstify -i ~/.config/dunst/icons/pokeball.svg "Good Afternoon!" "$NAME!" -u low
elif [ "$datey" -ge 18 ] && [ "$datey" -le 23 ] 
then
    dunstify -i ~/.config/dunst/icons/wizard_hat.svg "Good Nighty!" "$NAME!" -u low
else 
    dunstify -i ~/.config/dunst/icons/skull.svg "Demons are watching you..." "$NAME!" -u low
fi
