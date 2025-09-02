{ pkgs, ... }:

{
  # Install firefox.
  programs.hyprland.enable = true;
  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [
    hyprpaper
    hyprlock
    hyprls
    wofi
    waybar
  ];
  
}
