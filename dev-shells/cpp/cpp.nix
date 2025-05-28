{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.gnumake 
    pkgs.cmake
    pkgs.gtest     
    pkgs.openssl
    pkgs.podofo
    pkgs.fontconfig
    pkgs.libjpeg   
    pkgs.gpp
    pkgs.boost
  ];

  # Optional: Add a custom environment message
  shellHook = ''
    export SHELL_THEME="C++"
  '';
}
