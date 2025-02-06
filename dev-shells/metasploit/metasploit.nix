{ nix-security, pkgs, system }:

pkgs.mkShell {
  # Add packages to the shell environment
    buildInputs = [
        nix-security.packages.${system}.exploitation.msf  # Intégrer msf
    ];

    shellHook = ''
        export SHELL_THEME="Metasploit"
    '';
}
