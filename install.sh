#!/usr/bin/env bash

read -p "обновить flake.nix? (y/n): " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
    sudo nix flake update
else
    echo "устоновка без обновления"
fi

sudo cp -r nixos/* /etc/nixos
cp -r hypr ~/.config/
cp -r rofi ~/.config/
cd /etc/nixos

sudo nixos-rebuild switch --flake ./

read -p "выполнить перезапуск? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    reboot
else
    echo "устоновка оконьчена"
fi