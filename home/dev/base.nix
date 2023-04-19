{ pkgs, ... }:

{
  imports = [
    ./neovim
    ./vscode
    ./node.nix
    ./gh.nix
    ./git.nix
  ];

  # Globally installed dev tools
  home.packages = with pkgs; [
    nixpkgs-fmt
    stylua
    nodePackages.prettier
  ];
}
