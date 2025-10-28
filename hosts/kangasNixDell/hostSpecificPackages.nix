{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
		ciscoPacketTracer8
		hakuneko
		zotero
    teams-for-linux
  ];

}
