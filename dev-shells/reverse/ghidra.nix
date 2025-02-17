{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Add packages to the shell environment
  buildInputs = [
    pkgs.ghidra   
    pkgs.ida-free     
  ];

  # Optional: Add a custom environment message
  shellHook = ''
    export SHELL_THEME="Reverse"
  '';
}
