{ config, pkgs, ... }:

{
  nix.gc = {
    automatic = true;                      # включаем автоматическую очистку
    dates = "weekly";                      # как часто запускать
    options = "--delete-older-than 30d";   # удалять поколения старше 30 дней
  };
}

