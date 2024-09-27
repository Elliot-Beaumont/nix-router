{
  description = "NixOS Configuration for Home Router";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      nixosConfigurations.router = pkgs.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
        ];
      };
    };
}
