#! /bin/sh

run() { ! pgrep -x "$1" >/dev/null && "$@"; }

xsetroot -cursor_name left_ptr &
setxkbmap -layout us,ru -option "grp:alt_shift_toggle,grp_led:scroll" &
picom -b --config $HOME/.config/picom.conf &
# hsetroot -fill /usr/share/wall/ctld.png &
run nitrogen --restore &
run sxhkd -c $HOME/.config/bspwm/sxhkd/sxhkdrc &
if [ "$(which polybar)" != "polybar not found" ]; then
  $HOME/.config/bspwm/polybar/launch.sh &
  # (sleep 2; sh ~/.bin/phide.sh) &
fi
run tint2 -c $HOME/.config/tint2/tray.tint2rc &
run dunst &
if [ "$(which thunar)" != "thunar not found" ]; then
  thunar --daemon &
fi
# numlockx &
xsettingsd &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
gnome-keyring-daemon --start --components=pkcs11 &

# greenclip daemon &

run nm-applet &
# run redshift-gtk &
run xfce4-power-manager &
# run caffeine &
run udiskie -t &
# run clipit &
run parcellite &
# run unclutter &
# run telegram-desktop &
