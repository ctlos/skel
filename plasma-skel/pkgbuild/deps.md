plasma-meta
kde-system-meta
plasma-wayland-session
egl-wayland
plasma-desktop
kde-utilities-meta
plasma-pa
packagekit-qt5
kvantum-qt5
konsole
dolphin
ark
kate
ffmpegthumbs
kwalletmanager
kdeconnect
latte-dock
gwenview
fwupd

extra-cmake-modules
applet-window-buttons-git
libdbusmenu-glib
libdbusmenu-gtk3
libdbusmenu-gtk2
libdbusmenu-qt5
lib32-libdbusmenu-glib
lib32-libdbusmenu-gtk2

firefox-appmenu-bin

# Plasma skel

hide window decorate maximize

```bash
# ~/.config/kwinrc

[Windows]
BorderlessMaximizedWindows=true
```

window button panel

```bash
yay -S extra-cmake-modules applet-window-buttons-git
```

global menu deps

```bash
yay -S libdbusmenu-glib libdbusmenu-gtk3 libdbusmenu-gtk2 libdbusmenu-qt5 lib32-libdbusmenu-glib lib32-libdbusmenu-gtk2
```

firefox global menu

```bash
yay -S firefox-appmenu-bin
```

- настройки окон - дополнительно - по центру
- menu icon - Papirus - drag-surface
