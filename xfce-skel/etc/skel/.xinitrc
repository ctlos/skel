#!/bin/sh

usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

[[ -f $sysresources ]] && xrdb -merge $sysresources
[[ -f ~/.Xresources ]] && xrdb -merge $HOME/.Xresources
[[ -f $sysmodmap ]] && xmodmap $sysmodmap
[[ -f $usermodmap ]] && xmodmap $usermodmap

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

xset b off

exec startxfce4
