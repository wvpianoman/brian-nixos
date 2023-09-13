{
  description = "flake for brian with Home Manager enabled";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{
    self,
    nixpkgs,
    home-manager,
    ...
  }: {
    nixosConfigurations = {
      Nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.brian = { pkgs, ... }: {
              home.username = brian";
              home.homeDirectory = "/home/brian";
              programs.home-manager.enable = true;
              home.packages = with pkgs; [
                thunderbird
                keepassxc
              ];
              home.stateVersion = "23.11";
            };
          }
        ];
      };
    };
  };
}
