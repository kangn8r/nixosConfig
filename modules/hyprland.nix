{ pkgs, ... }:

{

  # Install firefox.
  programs.hyprland.enable = true;
  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [
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
