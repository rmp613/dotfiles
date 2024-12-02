{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.d.dev.gleam;
  # legacyPackages = pkgs.legacyPackages.${system};
  corepackEnable = pkgs.runCommand "corepack-enable" { } ''
    mkdir -p $out/bin
    ${pkgs.nodejs_22}/bin/corepack enable --install-directory $out/bin
  '';
in
{
  options.d.dev.gleam = {
    enable = mkOption {
      type = types.bool;
      default = true;
    };
  };

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      nodejs_22
      corepackEnable
      erlang_27
      gleam
      rebar3
    ];
  };
}
