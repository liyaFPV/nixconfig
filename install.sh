#!/usr/bin/env bash

sudo cp -r nixos/* /etc/nixos
sudo cp -r hypr/ ~/.config/
sudo cp -r rofi/ ~/.config/

sudo nixos-rebuild switch
