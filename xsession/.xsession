#!/bin/sh

fcitx -d

# set the wallpaper
wallpaper=$(ls -d $HOME/Pictures/wallpapers/* | shuf -n1)
wal --backend haishoku -i $wallpaper

sleep 1 # ensure that fcitx has starteed
xbindkeys &

$HOME/.jackdrc &

exec herbstluftwm
