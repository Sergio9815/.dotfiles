#!usr/bin/sh

welcome() {
  printf "%s" "\
███████  ██████ ██████  ███████ ███████ ███    ██ ███████ ██   ██  ██████  ████████ 
██      ██      ██   ██ ██      ██      ████   ██ ██      ██   ██ ██    ██    ██    
███████ ██      ██████  █████   █████   ██ ██  ██ ███████ ███████ ██    ██    ██    
     ██ ██      ██   ██ ██      ██      ██  ██ ██      ██ ██   ██ ██    ██    ██    
███████  ██████ ██   ██ ███████ ███████ ██   ████ ███████ ██   ██  ██████     ██    
                                                                                    
"
exit 1
}

APPNAME="Screenshot"
dunstify -h string:fgcolor:#bfdaf2 '      ' -i ~/.config/dunst/icons/screenshot.svg   "<span foreground='#ACFFAD' font_desc='Cartograph CF Italic 19'><b>Scr</b></span><span foreground='#7fd4ff' font_desc='Cartograph CF Italic 19'><b>eens</b></span><span foreground='#C1B3FF' font_desc='Cartograph CF Italic 19'><b>hot</b></span> \n<span foreground='#bfdaf2' font_desc='Cartograph CF 13'><b>Screenshot saved!</b></span>"
