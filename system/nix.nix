{ pkgs, inputs, ... }:

{
  nix = {
    settings = {
      # optimise = { automatic = true; };
      trusted-users = [ "root" "@wheel" ];
    };

    gc = {
      automatic = true;
      options = "--delete-older-than 10d";
    };

    package = pkgs.nixFlakes;
    registry.nixpkgs.flake = inputs.stable;

    extraOptions = ''
      experimental-features = nix-command flakes
      warn-dirty = false
    '';
  };
}
