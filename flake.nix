{
  description = "Home Manager configuration";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }: let
    arch = "x86_64-linux";
    arm = "aarch64-linux";
  in {
    defaultPackage.${arch} =
      home-manager.defaultPackage.${arch};

    homeConfigurations."yulian@seashanty" =
      home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${arch};
        modules = [ ./shared.nix ./home.nix ./pkgs/base.nix ./pkgs/dev.nix ./pkgs/home.nix];
      };

    homeConfigurations."yulian@lx1e" =
      home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${arch};
        modules = [ ./shared.nix ./work.nix ./pkgs/base.nix ./pkgs/dev.nix ./pkgs/k8s.nix ./pkgs/work.nix];
      };

    homeConfigurations."yulian@oceanhymn" =
      home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${arch};
        modules = [ ./shared.nix ./laptop.nix ./pkgs/base.nix ./pkgs/dev.nix ./pkgs/laptop.nix];
      };

    homeConfigurations."yulian@onyx-lake" = 
      home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${arm};
        modules = [ ./shared.nix ./cloudbox.nix ./pkgs/base.nix ./pkgs/dev.nix ./pkgs/cloudbox.nix];
      };
    };
}
