{ config, lib, ... }:

with lib;

let
  cfg = config.d.apps.neovim;
in

{
  options.d.apps.neovim = {
    enable = mkOption {
      type = types.bool;
      default = true;
    };
  };

  config = mkIf cfg.enable {
    programs.neovim = {
      enable = true;
    };

    xdg.configFile."nvim" = {
      source =
        config.lib.file.mkOutOfStoreSymlink
          "${config.home.homeDirectory}/.config/home-manager/config/nvim/mvim";
      recursive = true;
    };

  };
}
