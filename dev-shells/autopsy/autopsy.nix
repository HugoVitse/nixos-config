{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Add packages to the shell environment
    buildInputs = [
        pkgs.autopsy
        pkgs.sleuthkit
    ];

    shellHook = ''
        export SHELL_THEME="Autopsy"
    '';
}
