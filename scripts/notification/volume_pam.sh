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
icon_name="~/.config/dunst/icons/meowth.svg"

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
                # Send notification thing
                #dunstify -i $icon_name -r ${ID} -a ${APPNAME} -h string:fgcolor:#ebe3ba -h string:frcolor:#ebe3ba $(bar_thingy) 
                #dunstify -h string:fgcolor:#2c2e3e '      ' -i $icon_name -r ${ID} -a ${APPNAME} "<span foreground='#caf6bb' font_desc='UbuntuMono Nerd Font 22'><b>Volume</b></span>\n<span foreground='#ebb9b9' font_desc='Source Code Pro 23'><b>$(bar_thingy)</b></span>"
                dunstify  -i $icon_name -r $ID -a $APPNAME -h string:fgcolor:#caf6bb '      ' "<span foreground='#ebb9b9' font_desc='Cartograph CF Italic 19'><b>Vo</b></span><span foreground='#ebe3b9' font_desc='Cartograph CF Italic 19'><b>lu</b></span><span foreground='#caf6bb' font_desc='Cartograph CF Italic 19'><b>me</b></span>\n<span foreground='#cddbf9' font_desc='Source Code Pro 23'><b>$(bar_thingy)</b></span>"
                
            fi
            ;;
        down)
            if [ $volume != "muted" ] 
            then
                pamixer -d 10
                # Send notification thing
                #dunstify -i $icon_name -r ${ID} -a ${APPNAME} -h string:fgcolor:#ebe3ba -h string:frcolor:#ebe3ba $(bar_thingy) 
                #dunstify -h string:fgcolor:#2c2e3e '      ' -i $icon_name -r ${ID} -a ${APPNAME} "<span foreground='#caf6bb' font_desc='UbuntuMono Nerd Font 22'><b>Volume</b></span>\n<span foreground='#ebb9b9' font_desc='Source Code Pro 23'><b>$(bar_thingy)</b></span>"
                dunstify  -i $icon_name -r $ID -a $APPNAME -h string:fgcolor:#ebe3ba '      ' "<span foreground='#ebb9b9' font_desc='Cartograph CF Italic 19'><b>Vo</b></span><span foreground='#ebe3b9' font_desc='Cartograph CF Italic 19'><b>lu</b></span><span foreground='#caf6bb' font_desc='Cartograph CF Italic 19'><b>me</b></span>\n<span foreground='#cddbf9' font_desc='Source Code Pro 23'><b>$(bar_thingy)</b></span>"
            fi
            ;;
        toggle)
            pamixer -t
            echo $volume
            if [ "$volume" == "muted" ] 
            then
                # Send notification thing
                #dunstify -i $icon_name -r ${ID} -a ${APPNAME} -h string:fgcolor:#ebe3ba -h string:frcolor:#ebe3ba $(bar_thingy) 
                #dunstify -h string:fgcolor:#2c2e3e '      ' -i $icon_name -r ${ID} -a ${APPNAME} "<span foreground='#caf6bb' font_desc='UbuntuMono Nerd Font 22'><b>Volume</b></span>\n<span foreground='#ebb9b9' font_desc='Source Code Pro 23'><b>$(bar_thingy)</b></span>"
                dunstify  -i $icon_name -r $ID -a $APPNAME -h string:fgcolor:#ebb9b9 '      ' "<span foreground='#ebb9b9' font_desc='Cartograph CF Italic 19'><b>Vo</b></span><span foreground='#ebe3b9' font_desc='Cartograph CF Italic 19'><b>lu</b></span><span foreground='#caf6bb' font_desc='Cartograph CF Italic 19'><b>me</b></span>\n<span foreground='#cddbf9' font_desc='Source Code Pro 23'><b>$(bar_thingy)</b></span>"
            else
                # Send notification thing
                #dunstify -i $icon_name -r ${ID} -a ${APPNAME} -h string:fgcolor:#ebe3ba -h string:frcolor:#ebe3ba $(bar_thingy) 
                #dunstify -h string:fgcolor:#2c2e3e '      ' -i $icon_name -r ${ID} -a ${APPNAME} "<span foreground='#caf6bb' font_desc='UbuntuMono Nerd Font 22'><b>Volume</b></span>\n<span foreground='#ebb9b9' font_desc='Source Code Pro 23'><b>$(bar_thingy)</b></span>"
                dunstify  -i $icon_name -r $ID -a $APPNAME -h string:fgcolor:#ebb9b9 '      ' "<span foreground='#ebb9b9' font_desc='Cartograph CF Italic 19'><b>Vo</b></span><span foreground='#ebe3b9' font_desc='Cartograph CF Italic 19'><b>lu</b></span><span foreground='#caf6bb' font_desc='Cartograph CF Italic 19'><b>me</b></span>\n<span foreground='#cddbf9' font_desc='Source Code Pro 23'><b>$(bar_thingy)</b></span>"
            fi
            ;;
        *)
            welcome
            ;;
    esac
fi

