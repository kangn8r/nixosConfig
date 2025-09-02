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
  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [
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
