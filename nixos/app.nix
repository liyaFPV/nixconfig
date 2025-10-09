{config, pkgs, ...}:

{
  environment.systemPackages = [
	pkgs.gedit
	pkgs.kitty
	pkgs.nautilus
	pkgs.firefox
	pkgs.waybar
	pkgs.rofi
	pkgs.git
 ];
}
