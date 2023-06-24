{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.d.apps.obs;
in

{
  options.d.apps.obs = {
    enable = mkOption {
      type = types.bool;
      default = false;
    };
  };

  config = {
    programs.obs-studio = {
      enable = cfg.enable;
    };
  };
}
