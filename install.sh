#!/usr/bin/env bash
sudo chmod +x rofi/scripts/power.sh
sudo cp -r nixos/* /etc/nixos
cp -r hypr ~/.config/
cp -r rofi ~/.config/

sudo nixos-rebuild switch
