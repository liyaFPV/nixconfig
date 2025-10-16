{config, pkgs, ...}:

{
	imports =
    [
      ./home.nix
      ./zsh.nix
    ];

  environment.systemPackages = [
	pkgs.gedit
	pkgs.kitty
	pkgs.nautilus
	pkgs.firefox
	pkgs.waybar
	pkgs.rofi-wayland
	pkgs.git
	pkgs.telegram-desktop
	pkgs.htop
	pkgs.neofetch
	pkgs.hyprpaper
	pkgs.git

 ];
}
