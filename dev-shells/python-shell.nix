{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Add packages to the shell environment
  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";
  buildInputs = [
    pkgs.python3           # Python 3 interpreter
    pkgs.python3Packages.virtualenv  # Virtual environment tool
    pkgs.zsh
  ];

  # Optional: Add a custom environment message
  shellHook = ''
    echo "Virtual environment shell for Jupyter notebooks initialized!"
    echo "Run: python3 -m venv venv && source venv/bin/activate"
    echo "Then install packages like 'notebook' and 'ipykernel' inside the venv."
  '';
}
