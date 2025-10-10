#!/usr/bin/env bash

sudo cp nixos/* /etc/nixos
sudo cp hypr/ .config/
sudo nixos-rebuild switch
reboot
