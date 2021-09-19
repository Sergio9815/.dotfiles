#!usr/bin/sh

welcome() {
  printf "%s" "\

███████  ███████           ███   ███   ███████
██     ██                ███   ███   ██
███████  ███████  ███████  ███   ███   ███████
██          ██           ███   ███         ██ 
███████  ███████            ████████    ███████ 
            
Dependencies:
    - xkblayout-state -> Get current keyboard layout                                                                       
"
exit 1
}

APPNAME="Es"

layout="$(xkblayout-state print "%s")"

echo $layout

if [ $layout = "us" ]
then
    dunstify -u low -h string:fgcolor:#bfdaf2 '      ' -i ~/.config/dunst/icons/snorlax.svg   "<span foreground='#ACFFAD' font_desc='Cartograph CF Italic 19'><b>~</b></span><span foreground='#7fd4ff' font_desc='Cartograph CF Italic 19'><b> US </b></span><span foreground='#C1B3FF' font_desc='Cartograph CF Italic 19'><b>~</b></span> \n<span foreground='#bfdaf2' font_desc='Cartograph CF 13'><b>Keyboard layout!</b></span>"
elif [ $layout = "es" ]
then
    dunstify -u low -h string:fgcolor:#bfdaf2 '      ' -i ~/.config/dunst/icons/pokemon.svg   "<span foreground='#ACFFAD' font_desc='Cartograph CF Italic 19'><b>~</b></span><span foreground='#7fd4ff' font_desc='Cartograph CF Italic 19'><b> ES </b></span><span foreground='#C1B3FF' font_desc='Cartograph CF Italic 19'><b>~</b></span> \n<span foreground='#bfdaf2' font_desc='Cartograph CF 13'><b>Keyboard layout!</b></span>"
fi
