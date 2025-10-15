{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
		zenmap
		unixtools.arp
		protonup-rs
		mediawriter
		varia
		nmap
		obs-studio
		vscode
    prismlauncher
    libunity
    lutris
    jdk
    zsh-powerlevel10k
    wesnoth
    superTux
    ripgrep
    fortune
    eza
    thunderbird
    dysk
    puddletag
    cowsay
    vlc
    gitui
    lazygit
    nbsdgames
    _2048-in-terminal
    greed
    vitetris
    kitty
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
    python313
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
		crawl
    gamemode
    mangohud
    gcc
    cargo
    nixfmt-rfc-style
    libreoffice-qt6-fresh
    cbonsai
    nvd
    bat
    nh
    tealdeer
    fail2ban
  ];

  # Install firefox.
  programs.firefox.enable = true;
  programs.steam.enable = true;
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    shellAliases = {
      ls = "eza --icons";
      nixCleanup = "sudo nh clean all --keep 3";
      nixFlakeUpdate = "nix flake update --flake ~/nixosConfig/";
      cd = "z";
    };

  };
  programs.zsh.ohMyZsh = {
    enable = true;
    theme = "superjarin";
    plugins = [ ];
  };
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
  # programs.wireshark = {
  #   enable = true;
  #   usbmon.enable = true;
  #   dumpcap.enable = true;
  #   package = pkgs.wireshark;
  # };

  fonts.packages = with pkgs; [
    nerd-fonts.fira-mono
  ];

}
