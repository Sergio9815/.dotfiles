#!usr/bin/sh

# sudo apt-get install libboost-program-options-dev
# En /usr/bin hacer sudo ln -s ~/pamixer/pamixer pamixer

welcome() {
printf "%s" "\
# Frenzy's
██    ██  ██████  ██      ██    ██ ███    ███ ███████ 
██    ██ ██    ██ ██      ██    ██ ████  ████ ██      
██    ██ ██    ██ ██      ██    ██ ██ ████ ██ █████   
 ██  ██  ██    ██ ██      ██    ██ ██  ██  ██ ██      
 ████    ██████  ███████  ██████  ██      ██ ███████ 
version 0.1: Touch of Katana
Dependencies:
    - pamixer -> Pulseaudio controller
    - dunst -> a nice lil notifier
A pamixer wrapper script that uses dunst to send notifications
    Options:
    up -> Increases the volume
    down -> Decreases the volume
    toggle -> Mutes or Unmutes the volume
"
exit 1
}

ID=500
APPNAME="volume_boi"
icon_name="~/.config/dunst/icons/dratini.svg"

# If someone wants to know how to use this

# Get the volume thingy
    yeet=$(pamixer --get-volume-human)
    if [ "$yeet" != "muted" ]
    then
        volume="${yeet%\%*}"
    fi

# Main thing
if [ $# -gt 0 ] 
then
    case "$1" in
        help)
            welcome
            ;;
        up)
            if [ $volume != "muted" ] 
            then
                pamixer -i 10
                currentVol=$(pamixer --get-volume-human)
                # Send notification thing
                dunstify  -i $icon_name -r $ID -a $APPNAME -h string:fgcolor:#bfdaf2 '      ' "<span foreground='#ACFFAD' font_desc='Cartograph CF Italic 19'><b>Vo</b></span><span foreground='#7fd4ff' font_desc='Cartograph CF Italic 19'><b>lu</b></span><span foreground='#C1B3FF' font_desc='Cartograph CF Italic 19'><b>me up</b></span>\n<span foreground='#cddbf9' font_desc='MesloLGS NF 15'>~ 墳 $currentVol ~<b>$(bar_thingy)</b></span>"
                
            fi
            ;;
        down)
            if [ $volume != "muted" ] 
            then
                pamixer -d 10

                currentVol=$(pamixer --get-volume-human)
                # Send notification thing
                dunstify  -i $icon_name -r $ID -a $APPNAME -h string:fgcolor:#bfdaf2 '      ' "<span foreground='#ACFFAD' font_desc='Cartograph CF Italic 19'><b>Vo</b></span><span foreground='#7fd4ff' font_desc='Cartograph CF Italic 19'><b>lu</b></span><span foreground='#C1B3FF' font_desc='Cartograph CF Italic 19'><b>me down</b></span>\n<span foreground='#cddbf9' font_desc='MesloLGS NF 15'>~ 墳 $currentVol ~<b>$(bar_thingy)</b></span>"
            fi
            ;;
        toggle)
            pamixer -t
            echo $volume
            if [ $volume != "muted" ] 
            then
                # Send notification thing
                dunstify  -i $icon_name -r $ID -a $APPNAME -h string:fgcolor:#bfdaf2 '      ' "<span foreground='#ACFFAD' font_desc='Cartograph CF Italic 19'><b>Mu</b></span><span foreground='#7fd4ff' font_desc='Cartograph CF Italic 19'><b>t</b></span><span foreground='#C1B3FF' font_desc='Cartograph CF Italic 19'><b>ed</b></span>\n<span foreground='#cddbf9' font_desc='MesloLGS NF 15'>~ 墳 0% ~<b>$(bar_thingy)</b></span>"
            else
                # Send notification thing
                currentVol=$(pamixer --get-volume-human)
                dunstify  -i $icon_name -r $ID -a $APPNAME -h string:fgcolor:#bfdaf2 '      ' "<span foreground='#ACFFAD' font_desc='Cartograph CF Italic 19'><b>Un</b></span><span foreground='#7fd4ff' font_desc='Cartograph CF Italic 19'><b>mut</b></span><span foreground='#C1B3FF' font_desc='Cartograph CF Italic 19'><b>ed</b></span>\n<span foreground='#cddbf9' font_desc='MesloLGS NF 15'>~ 墳 $currentVol ~<b>$(bar_thingy)</b></span>"
            fi
            ;;
        *)
            welcome
            ;;
    esac
fi

