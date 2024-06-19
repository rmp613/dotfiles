{ pkgs, ... }:

let
  pkg = pkgs.biome;

  biome = ext: {
    command = "${pkg}/bin/biome";
    args = [ "--use-server" "--stdin-file-path=file.${ext}" ];
  };
in

{
  home.packages = [ pkg ];

  programs.helix.languages.language-server.biome = {
    command = "biome";
    args = [ "lsp-proxy" ];
  };
  programs.helix.languages.language = [
    { name = "html"; formatter = biome "html"; }
    { name = "css"; formatter = biome "css"; }

    { name = "jsx"; formatter = biome "jsx"; }
    { name = "tsx"; formatter = biome "tsx"; }
    { name = "javascript"; formatter = biome "js"; }
    { name = "typescript"; formatter = biome "ts"; }

    { name = "json"; formatter = biome "json"; }
    { name = "yaml"; formatter = biome "yaml"; }

    { name = "markdown"; formatter = biome "markdown"; }

    { name = "graphql"; formatter = biome "graphql"; }
  ];
#  programs.helix.languages.language = [
#     # { name = "html"; language-servers = [ { name = "typescript-language-server"; except-features = [ "format" ]; } "biome" ]; }
#     # { name = "css"; language-servers = [ { name = "typescript-language-server"; except-features = [ "format" ]; } "biome" ]; }

#     { name = "jsx"; language-servers = [ { name = "typescript-language-server"; except-features = [ "format" ]; } "biome" ]; }
#     { name = "tsx"; language-servers = [ { name = "typescript-language-server"; except-features = [ "format" ]; } "biome" ]; }
#     { name = "javascript"; language-servers = [ { name = "typescript-language-server"; except-features = [ "format" ]; } "biome" ]; }
#     { name = "typescript"; language-servers = [ { name = "typescript-language-server"; except-features = [ "format" ]; } "biome" ]; }

#     { name = "json"; language-servers = [ { name = "vscode-json-language-server"; except-features = [ "format" ]; } "biome" ]; }
#     # { name = "yaml"; language-servers = [ { name = "typescript-language-server"; except-features = [ "format" ]; } "biome" ]; }

#     { name = "markdown"; language-servers = [ { name = "typescript-language-server"; except-features = [ "format" ]; } "biome" ]; }

#     # { name = "graphql"; language-servers = [ { name = "typescript-language-server"; except-features = [ "format" ]; } "biome" ]; }
#   ];
}
