{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Add packages to the shell environment
  buildInputs = [
    pkgs.ettercap        
  ];

  # Optional: Add a custom environment message
  shellHook = ''
    export SHELL_THEME="Ettercap"
  '';
}
