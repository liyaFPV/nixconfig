#!/usr/bin/env bash

set -e

echo "=== NixOS Auto Installer ==="

# Определяем диск
DISK="/dev/vda"
echo "Используем диск: $DISK"
echo "ВНИМАНИЕ: Все данные на диске будут уничтожены!"
echo "Нажмите Enter чтобы продолжить или Ctrl+C для отмена"
read

# Копируем конфиги в правильное место
echo "Копируем конфигурационные файлы..."
sudo mkdir -p /mnt/etc/nixos
sudo cp -r nixos/* /mnt/etc/nixos/

# Проверяем наличие необходимых файлов
echo "Проверяем файлы конфигурации..."
if [ ! -f "/mnt/etc/nixos/configuration.nix" ]; then
    echo "Ошибка: configuration.nix не найден!"
    exit 1
fi

if [ ! -f "/mnt/etc/nixos/disko-config.nix" ]; then
    echo "Ошибка: disko-config.nix не найден!"
    exit 1
fi

# Обновляем disko-config.nix с правильным диском
echo "Обновляем disko-config.nix с диском $DISK..."
sudo sed -i "s|device = \".*\";|device = \"$DISK\";|g" /mnt/etc/nixos/disko-config.nix

# Запускаем установку
echo "Запускаем установку NixOS..."
echo "ПРИМЕЧАНИЕ: Если у вас полное шифрование, будет запрошен пароль для LUKS"
echo "Установите пароль когда появится запрос"
echo ""

sudo nixos-install --no-root-passwd

echo ""
echo "=== Установка завершена! ==="
echo "Перезагрузите систему: sudo reboot"
echo "После перезагрузки установите пароль пользователя: passwd"
