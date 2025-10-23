#!/usr/bin/env bash
sudo chmod +x rofi/scripts/power.sh
sudo cp -r nixos/* /etc/nixos
sudo cp -r hypr ~/.config/
sudo cp -r rofi ~/.config/

sudo nixos-rebuild switch
