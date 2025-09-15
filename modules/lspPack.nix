{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    stylua
    lua-language-server
    nil
    python313Packages.debugpy
		hyprls
		lua-language-server
  ];

}
