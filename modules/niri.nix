{ pkgs, ... }:

{

  programs.niri.enable = true;

  networking.wireless.iwd.enable = true;
  networking.wireless.iwd.settings = {
    Settings = {
      AutoConnect = true;
    };
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
    rofi
    waybar
		eww
  ];

}
