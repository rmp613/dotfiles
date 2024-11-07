
{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.d.cli.rainfrog;
in

{
  options.d.cli.rainfrog = {
    enable = mkOption {
      type = types.bool;
      default = true;
    };
  };

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      # rainfrog
    ];
  };
}
