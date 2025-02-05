{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Add packages to the shell environment
    buildInputs = [
        nix-security.packages.${system}.exploitation.msf  # Intégrer msf
    ];
}
