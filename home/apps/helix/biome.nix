{ pkgs, ... }:

let
  pkg = pkgs.biome;

  biome = parser: {
    command = "${pkg}/bin/biome";
  };
in

{
  home.packages = [ pkg ];

  programs.helix.languages.language-server.biome = {
    command = "biome";
    args = "lsp-proxy";
  };
  programs.helix.languages.language = [
    { name = "html"; formatter = biome "html"; }
    { name = "css"; formatter = biome "css"; }

    { name = "jsx"; formatter = biome "typescript"; }
    { name = "tsx"; formatter = biome "typescript"; }
    { name = "javascript"; formatter = biome "typescript"; }
    { name = "typescript"; formatter = biome "typescript"; }

    { name = "json"; formatter = biome "json"; }
    { name = "yaml"; formatter = biome "yaml"; }

    { name = "markdown"; formatter = biome "markdown"; }

    { name = "graphql"; formatter = biome "graphql"; }
  ];
}
