{ pkgs, ... }:

{
  # Install firefox.
  programs.firefox.enable = true;
  programs.steam.enable = true;

  # programs.wireshark = {
  #   enable = true;
  #   usbmon.enable = true;
  #   dumpcap.enable = true;
  #   package = pkgs.wireshark;
  # };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    cowsay
    vlc
    gitui
    lazygit
    nbsdgames
    _2048-in-terminal
    greed
    vitetris
    kitty
    nil
    yt-dlp
    ncdu
    dust
    mangal
    josm
    zellij
    wget
    neovim
    tmux
    fastfetch
    tmuxp
    ranger
    fzf
    git
    mc
    python314
    unzip
    nodejs_24
    vesktop
    btop
    gh
    heroic
    btop
    umu-launcher
    pipes-rs
    crawlTiles
    gamemode
    mangohud
    gcc
    cargo
    lua-language-server
    stylua
    nixfmt-rfc-style
    libreoffice-qt6-fresh-unwrapped
    cbonsai
    nvd
    bat
    nh
    tealdeer
    fail2ban
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.fira-mono
  ];

}
