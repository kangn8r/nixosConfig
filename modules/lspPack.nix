{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jdt-language-server
    stylua
    nil
    python313Packages.debugpy
    python313Packages.python-lsp-server
    python313Packages.rope
    python313Packages.pyflakes
    hyprls
    lua-language-server
  ];

}
