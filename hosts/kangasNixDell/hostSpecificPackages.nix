{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
		ciscoPacketTracer8
    teams-for-linux
  ];

}
