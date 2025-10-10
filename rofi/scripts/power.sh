#!/usr/bin/env bash


chosen=$(echo -e " Выключить\n Перезагрузить\n󰍃 Выйти" | \
  rofi -dmenu -i -p "Питание:" -theme ~/.config/rofi/themes/gruvbox-dark.rasi)

case "$chosen" in
  " Выключить") systemctl poweroff ;;
  " Перезагрузить") systemctl reboot ;;
  "󰍃 Выйти") hyprctl dispatch exit ;;
esac
