# /etc/nixos/app/app.nix
{ config, pkgs, ... }: {
  
  # Разрешить несвободные пакеты
  nixpkgs.config.allowUnfree = true;

  imports = [
#    ./diskManager.nix
    ./zsh.nix
    ./git.nix
    ./hyprland.nix
  ];

  environment.systemPackages = with pkgs; [
    firefox
    arduino
    arduino-ide
    htop 
    gparted
    vscode
    wget
    curl
    telegram-desktop
    qbittorrent
    freecad
    steam
    vlc
    chromium
    filezilla
    nautilus
  ];
}
