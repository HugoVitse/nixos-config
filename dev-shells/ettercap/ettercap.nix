{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Add packages to the shell environment
  buildInputs = [
    pkgs.bettercap  
    pkgs.ettercap
    pkgs.libnet      
  ];

  # Optional: Add a custom environment message
  shellHook = ''
    export SHELL_THEME="Ettercap"
  '';
}
