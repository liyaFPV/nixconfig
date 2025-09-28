# /etc/nixos/configuration.nix
{ config, pkgs, ... }: {
  # ...
  # Другие настройки NixOS

  programs.git = {
    enable = true;
    config = {
      user = {
        name = "liyaFPV";
        email = "lbkmzc942@gmail.com";
      };
    };
  };
}
