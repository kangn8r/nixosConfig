{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
		ciscoPacketTracer8
		hakuneko
		zotero
    teams-for-linux
  ];

	nixpkgs.config.permittedInsecurePackages = [
		"ciscoPacketTracer8-8.2.2"
	];

}
