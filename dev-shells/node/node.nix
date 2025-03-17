{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Add packages to the shell environment

  buildInputs = [
    pkgs.nodejs_23# Virtual environment tool
  ];

  # Optional: Add a custom environment message
  shellHook = ''
    export NIXPKGS_ALLOW_INSECURE=1
    export SHELL_THEME="Node"
  '';
}


