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
    dunstify -u low -h string:fgcolor:#C1B3FF '      ' -i ~/.config/dunst/icons/spell_book.svg   "<span foreground='#ebb9b9' font_desc='Cartograph CF Italic 19'><b>~</b></span><span foreground='#ebe3b9' font_desc='Cartograph CF Italic 19'><b> US </b></span><span foreground='#caf6bb' font_desc='Cartograph CF Italic 19'><b>~</b></span> \n<span foreground='#cddbf9' font_desc='Cartograph CF 13'><b>Keyboard layout!</b></span>"
elif [ $layout = "es" ]
then
    dunstify -u low -h string:fgcolor:#C1B3FF '      ' -i ~/.config/dunst/icons/spell_book.svg   "<span foreground='#ebb9b9' font_desc='Cartograph CF Italic 19'><b>~</b></span><span foreground='#ebe3b9' font_desc='Cartograph CF Italic 19'><b> ES </b></span><span foreground='#caf6bb' font_desc='Cartograph CF Italic 19'><b>~</b></span> \n<span foreground='#cddbf9' font_desc='Cartograph CF 13'><b>Keyboard layout!</b></span>"
fi
