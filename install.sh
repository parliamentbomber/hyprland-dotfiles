#!/bin/bash

if [ `id -u` = 0 ] ; then 
    echo -e "Don't run this as root or \033[0;31mVERY BAD\033[0m things will happen!"
    read -n1 -s -r -p "Are you sure?"$'\n' key
    read -n1 -s -r -p "Are you really sure?"$'\n' key
    read -n1 -s -r -p "Are you really, really sure?"$'\n' key
    read -n1 -s -r -p "Are you really, really, really sure?"$'\n' key
    read -n1 -s -r -p "Are you really, really, really, really sure?"$'\n' key
    read -n1 -s -r -p "Are you really, really, really, really, really sure?"$'\n' key
    read -n1 -s -r -p "Are you really, really, really, really, really, really sure?"$'\n' key
    read -n1 -s -r -p "Are you really, really, really, really, really, really, really sure?"$'\n' key
    read -n1 -s -r -p "Are you really, really, really, really, really, really, really, really sure?"$'\n' key
    read -n1 -s -r -p "Are you really, really, really, really, really, really, really, really, really sure?"$'\n' key
    echo -e "\033[0;31mfine...\033[0m"
fi


hyprlandyay=~/.config/hypr
configdir=~/.config/

mkdir -p $hyprlandyay
mkdir -p $hyprlandyay/visual
mkdir -p $hyprlandyay/binds
mkdir -p $configdir

cp ./execonce.conf ./env.conf ./general.conf ./gestures.conf ./input.conf ./windowrule.conf $hyprlandyay
cp ./visual/monitor.conf ./visual/animations.conf ./visual/decoration.conf ./dwindle.conf $hyprlandyay/visual/
cp ./binds/multimedia.conf ./binds/runners.conf ./binds/windows.conf ./binds/workspaces.conf $hyprlandyay/binds/
cp ./electron-flags.conf ./code-flags.conf $configdir 

echo "done"