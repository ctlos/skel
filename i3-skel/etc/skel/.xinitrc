#!/bin/sh

sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
usermodmap=$HOME/.Xmodmap

[[ -f $sysresources ]] && xrdb -merge $sysresources
[[ -f ~/.Xresources ]] && xrdb -merge $HOME/.Xresources
[[ -f $sysmodmap ]] && xmodmap $sysmodmap
[[ -f $usermodmap ]] && xmodmap $usermodmap

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xset b off
xsetroot -cursor_name left_ptr &
# xset +fp /usr/share/fonts/local &
# xset +fp /usr/share/fonts/artwiz-fonts &
# xset +fp /usr/share/fonts/misc &
# xset +fp /usr/share/fonts/bitmap &
# xset +fp ~/.fonts &
# xset fp rehash &
# fc-cache -fv &

exec i3
