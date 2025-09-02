{ pkgs, ... }:

{

  # Install firefox.
  programs.hyprland.enable = true;
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
    hyprls
    rofi
    waybar
  ];

}
