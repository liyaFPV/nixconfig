#!/usr/bin/env bash
sudo chmod +x rofi/scripts/power.sh
sudo cp -r nixos/* /etc/nixos
cp -r hypr ~/.config/
cp -r rofi ~/.config/

sudo nixos-rebuild switch

read -p "выполнить перезапуск? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    reboot
else
    echo "устоновка оконьчена"
fi