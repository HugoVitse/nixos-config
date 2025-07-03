{
  description = "python shell dev flake";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let 
        pkgs = import nixpkgs {
          inherit system;
          config = {
            allowUnfree = true;
            allowInsecure = true;
          };
        };
      in {
        devShells.default = import ./pupil.nix { inherit pkgs; };
      }
    );
}
