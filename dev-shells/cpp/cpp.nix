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
    pkgs.dpkg
    pkgs.libgcc
    pkgs.boost
    pkgs.qt6.full
    pkgs.qt6.qtbase
    pkgs.qtcreator

    pkgs.qt6.wrapQtAppsHook
    pkgs.makeWrapper
    pkgs.bashInteractive
    pkgs.python3Packages.pybind11
  ];

  # Optional: Add a custom environment message
  shellHook = ''
    export SHELL_THEME="C++"
    bashdir=$(mktemp -d)
    makeWrapper "$(type -p zsh)" "$bashdir/zsh" "''${qtWrapperArgs[@]}"
    exec "$bashdir/zsh"
  '';
}
