#!/usr/bin/env bash
# =============================================
# Saludo según hora con Pokémon - Kubuntu Edition
# =============================================

NAME="Sergio"
APPNAME="PokemonGreetings"

# Hora actual (formato 24h)
HOUR=$(date +%H)

# Iconos (cambia la ruta si los tienes en otro sitio)
ICON_PATH="$HOME/.config/dunst/icons"

if [ "$HOUR" -ge 6 ] && [ "$HOUR" -le 11 ]; then
    notify-send -i "$ICON_PATH/charmander.svg" \
                "Buenos días" "$NAME!" \
                -a "$APPNAME" -t 5000
elif [ "$HOUR" -ge 12 ] && [ "$HOUR" -le 17 ]; then
    notify-send -i "$ICON_PATH/pikachu.svg" \
                "Buenas tardes" "$NAME!" \
                -a "$APPNAME" -t 5000
elif [ "$HOUR" -ge 18 ] && [ "$HOUR" -le 23 ]; then
    notify-send -i "$ICON_PATH/squirtle.svg" \
                "Buenas noches" "$NAME!" \
                -a "$APPNAME" -t 5000
else
    notify-send -i "$ICON_PATH/venonat.svg" \
                "Los demonios te observan..." \
                -a "$APPNAME" -t 8000
fi
