#!/bin/sh
dconf load / < ~/.config/all-dconf.ini
rm -rf ~/.config/all-dconf.ini &
rm -rf ~/.config/autostart-scripts/dconf.sh &

notify-send "GNOME settings done!"
