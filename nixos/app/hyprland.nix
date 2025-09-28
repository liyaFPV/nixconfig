# /etc/nixos/app/hyprland.nix
{ config, pkgs, lib, ... }:

{
  # Включение Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  # Сервис XDG для порталов
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };

  # Пакеты для Hyprland
  environment.systemPackages = with pkgs; [
    hyprland
    hyprpaper
    waybar
    dunst
    rofi-wayland
    alacritty
    wl-clipboard
  ];

  # Настройка раскладки клавиатуры с приоритетом
  services.xserver = {
    layout = lib.mkDefault "us,ru";  # Используем mkDefault
    xkbOptions = lib.mkDefault "grp:win_space_toggle";
  };

  console.useXkbConfig = true;
}
