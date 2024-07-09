{ config, options, inputs, lib, version, user, theme, ... }:

with lib;

let
  cfg = config.d.hm;
  # nixpkgs-working-bun = inputs.nixpkgs-working-bun.legacyPackages.${config.system}.bun;
in

{
  options.d.hm = mkOption {
    type = types.listOf types.deferredModule;
    default = [ ];
  };

  options.d.dotfiles = lib.mkOption {
    type = lib.types.path;
    apply = toString;
    default = "${config.home.homeDirectory}/.dotfiles";
    example = "${config.home.homeDirectory}/.dotfiles";
    description = "Location of the dotfiles working copy";
  };
  config = {
    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
      backupFileExtension = "backup";

      extraSpecialArgs = {
        inherit version user theme; # nixpkgs-working-bun;
      };

      users.${user} = {
        imports = cfg ++ [
          inputs.nix-index.hmModules.nix-index
          ../home
        ];
      };
    };
  };
}
