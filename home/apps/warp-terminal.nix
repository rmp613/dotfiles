{ config, unstable, lib, ... }:

with lib;

let
  cfg = config.d.apps.warp-terminal;
in

{
  options = {
    d.apps.warp-terminal = {
      enable = mkOption {
        type = types.bool;
        default = true;
      };
    };
  };

  d.shell.variables = {
    TERMINAL = "warp-terminal";
  };
  config = mkIf cfg.enable {
    home.packages = [ unstable.warp-terminal ];
  };
}
