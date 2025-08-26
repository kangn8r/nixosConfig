{
  description = "Flake Test!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgsMaster.url = "github:nixos/nixpkgs/master";
  };

  outputs =
    { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
      };

      nixpkgsMaster = import nixpkgsMaster {
        config = {
          allowUnfree = true;
        };
      };

    in
    {
      nixosConfigurations = {
        kangasNixDell = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit system; };

          modules = [
            ./configuration.nix
          ];

          environment.systemPackages = with nixpkgsMaster; [
            yt-dlp
          ];
        };
      };
    };
}
