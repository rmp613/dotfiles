{ pkgs, ... }:

{
  environment = {
    shells = [ pkgs.fish ];
  };

  programs = {
    bash.completion.enable= true;

    fish.enable = true;
    fish.vendor.completions.enable = true;
  };
}
