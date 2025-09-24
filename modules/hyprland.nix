{ pkgs, ... }:

{

  # Install firefox.
  programs.hyprland.enable = true;

  networking.wireless.iwd.enable = true;
  networking.wireless.iwd.settings = {
    Settings = {
      AutoConnect = true;
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [
		rofimoji
    xdg-desktop-portal-gtk
    gnome-keyring
    rofi-power-menu
    iwd
    hyprpolkitagent
    brightnessctl
    dunst
    grimblast
    networkmanagerapplet
    hyprpaper
    hyprlock
    hypridle
    hyprls
    rofi
    waybar
  ];

}
