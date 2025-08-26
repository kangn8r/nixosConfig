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

        overlays = [(final: prev: {
          
        })];


      };

      

    in
    {
      nixosConfigurations = {
        kangasNixDell = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit system; };

          modules = [
            ./configuration.nix
          ];

       
        };
      };
    };
}
