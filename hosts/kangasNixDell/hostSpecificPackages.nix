{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
		zotero
    teams-for-linux
  ];

}
