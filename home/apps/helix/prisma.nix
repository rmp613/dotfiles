{ pkgs, ... }:

let
  pkg = pkgs.nodePackages."@prisma/language-server";
in

{
  home.packages = [ pkg ];

  programs.helix.languages = {
    language-server.prisma-language-server = {
      command = "pnpm";
      args = [ "prisma-language-server" "--stdio" ];
    };
  };
}
