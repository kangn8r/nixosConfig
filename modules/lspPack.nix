{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    stylua
    lua-language-server
    nil
    python313Packages.debugpy
		python313Packages.python-lsp-server
		hyprls
		lua-language-server
  ];

}
