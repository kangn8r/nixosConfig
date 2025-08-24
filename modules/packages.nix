{ pkgs, ... }:

{
  # Install firefox.
  programs.firefox.enable = true;
  programs.steam.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
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
    home-manager
    pipes-rs
    crawlTiles
    gamemode
    mangohud
    gitui
    gcc
    cargo
    lua-language-server
    stylua
    nixfmt-rfc-style
    libreoffice-qt6-fresh-unwrapped
    cbonsai
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
  ];

}
