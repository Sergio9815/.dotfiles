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
dunstify -h string:fgcolor:#C1B3FF '      ' -i ~/.config/dunst/icons/screenshot.svg   "<span foreground='#ebb9b9' font_desc='Cartograph CF Italic 19'><b>Scr</b></span><span foreground='#ebe3b9' font_desc='Cartograph CF Italic 19'><b>eens</b></span><span foreground='#caf6bb' font_desc='Cartograph CF Italic 19'><b>hot</b></span> \n<span foreground='#cddbf9' font_desc='Cartograph CF 13'><b>Screenshot saved!</b></span>"
