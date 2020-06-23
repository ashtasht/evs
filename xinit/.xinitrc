#!/bin/bash

source $HOME/.xprofile
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
fcitx &

xrdb $HOME/.Xresources &

$HOME/.jackdrc &

# Set the wallpaper
img=$(ls -d $XDG_CONFIG_HOME/wallpapers/* | shuf -n1)
#wal -ni $img --backend haishoku &
wal -ni $img --backend wal &
feh --bg-fill --no-xinerama --no-fehbg $img &

picom -bco 0.5 -fD2 -i 0.91

redshift &

sleep 0.3

xbindkeys

exec herbstluftwm
