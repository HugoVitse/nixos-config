{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Add packages to the shell environment
  buildInputs = [
    pkgs.gnumake 
    pkgs.cmake
    pkgs.gtest          
  ];

  # Optional: Add a custom environment message
  shellHook = ''
    export SHELL_THEME="C++"
  '';
}
