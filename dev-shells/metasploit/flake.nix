{
  description = "metasploit shell dev flake";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nix-security.url = "github:juliosueiras-nix/nix-security";
  };


  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          devShells.default = import ./metasploit.nix { inherit pkgs; };
        }
      );
}