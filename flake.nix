{
  description = "Bomal Nixamer";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, home-manager, ... }: 
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = { allowUnfree = true; };  
    };
    lib = nixpkgs.lib;

  in {
    homeConfigurations = {
      "bomal" = home-manager.lib.homeManagerConfiguration {
	inherit pkgs;
        modules = [ ./home.nix ];
      };
    };

    nixosConfigurations = {
      nixlab = lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
        ];
      };
    };

  };
}
