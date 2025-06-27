{ inputs, config, pkgs, ... }:


{
  inputs.home-manager.nixosModules.home-manager = {
    home-manager.useGlobalPkgs = true;
    home-manager.useUserPackages = true;
    home-manager.backupFileExtension = "backup";
    home-manager.users.hugo = import ./home.nix;  
  };
}



