{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
		hakuneko
		zotero
    teams-for-linux
  ];

}
