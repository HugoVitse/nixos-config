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
            permittedInsecurePackages = [ "python-2.7.18.8" ];
          };
        };
      in {
        devShells.default = import ./python.nix { inherit pkgs; };
      }
    );
}
