{
    enable = true;

    shellAliases = {
      c = "./scripts/c.sh";
      cr = "./scripts/cr.sh";
      t = "./scripts/test.sh";
      r = "./scripts/run.sh";
      ct = "./scripts/ct.sh";
      reverse = "nix develop ~/nixos-config/dev-shells/reverse/ --command zsh";
      ettercap = "nix develop ~/nixos-config/dev-shells/ettercap/ --command zsh";
      node-shell = "nix develop ~/nixos-config/dev-shells/node/ --command zsh";
      cpp = "nix develop ~/nixos-config/dev-shells/cpp/ --command zsh";
      autopsy-shell = "nix develop ~/nixos-config/dev-shells/autopsy/ --command zsh";
      gc = "~/nixos-config/scripts/GarbageCollector.sh";
      push-config = "cd ~/nixos-config && git add -A && git commit -m 'update' && git push origin master";
      python-shell = "nix develop ~/nixos-config/dev-shells/python/ --command zsh";
      metasploit = "nix develop ~/nixos-config/dev-shells/metasploit/ --command zsh";
      edit = "code ~/nixos-config/";
      apt = "~/nixos-config/package-installer.sh";
      rebuild = "sudo nixos-rebuild switch --flake ~/nixos-config";
      urldecode = "python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(sys.stdin.read()))'";
      urlencode = "python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.stdin.read()))'";
      casque = "~/nixos-config/scripts/autobluetooth.sh &";
    };

    initContent = import ./zshrc.nix;
}