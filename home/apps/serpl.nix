
{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.d.apps.serpl;
in

{
  options = {
    d.apps.serpl = {
      enable = mkOption {
        type = types.bool;
        default = false;
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = [ pkgs.serpl ];

    d.fs.persisted = {
      directories = [ ".config/serpl" ];
    };
  };
}
