#!/bin/bash

entries="Lock Logout Suspend Reboot Poweroff"

selected=$(printf '%s\n' $entries | wofi --conf=$HOME/.config/wofi/config.power --style=$HOME/.config/wofi/style.widgets.css | awk '{print tolower($1)}')

case $selected in
  lock)
    $HOME/.config/sway/scripts/lock.sh;;
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  poweroff)
    exec systemctl poweroff -i;;
esac
