{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Add packages to the shell environment
  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";
  buildInputs = [
    pkgs.python3 
    pkgs.python2
    pkgs.python3Packages.pip          # Python 3 interpreter
    pkgs.python3Packages.tkinter
    pkgs.python3Packages.virtualenv  # Virtual environment tool
  ];

  # Optional: Add a custom environment message
  shellHook = ''
    export NIXPKGS_ALLOW_INSECURE=1
    export SHELL_THEME="Python"
  '';
}


