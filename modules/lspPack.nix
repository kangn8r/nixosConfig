{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jdt-language-server
    stylua
    lua-language-server
    nil
    python313Packages.debugpy
    python313Packages.python-lsp-server
    hyprls
    lua-language-server
		python313Packages.python-lsp-server
		python313Packages.rope
		python313Packages.pyflakes
		hyprls
		lua-language-server
  ];

}
