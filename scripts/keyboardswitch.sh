#!/bin/sh

current_layout=""

handle() {
  case $1 in
    activelayout*)
      new_layout=$(echo "$1" | cut -d ',' -f 2-)

      if [ "$new_layout" != "$current_layout" ]; then
        current_layout="$new_layout"

        notify-send "keyboard layout set:" "$current_layout"
      fi
      ;;
  esac
}

socat -U - UNIX-CONNECT:/tmp/hypr/"$HYPRLAND_INSTANCE_SIGNATURE"/.socket2.sock | while read -r line; do handle "$line"; done
