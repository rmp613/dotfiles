{ lib }:
{
  programs.neovim = {
    enable = true;
    programs.neovim.extraConfig = lib.fileContents ./mvim/init.lua;
  };
}
