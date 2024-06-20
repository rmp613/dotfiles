{ pkgs, ... }:

let
  pkg = pkgs.biome;

  biome = ext: {
    # so nix only has 1.7.3 as latest - we use local 
    # todo: add package manager detection?
    command = "type -q pnpm biome && pnpm biome || ${pkg}/bin/biome";
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
    { name = "html"; formatter = biome "html"; auto-format = true; }
    { name = "css"; formatter = biome "css"; auto-format = true; }

    { name = "jsx"; formatter = biome "jsx"; auto-format = true; }
    { name = "tsx"; formatter = biome "tsx"; auto-format = true; }
    { name = "javascript"; formatter = biome "js"; auto-format = true; }
    { name = "typescript"; formatter = biome "ts"; auto-format = true; }

    { name = "json"; formatter = biome "json"; auto-format = true; }
    { name = "yaml"; formatter = biome "yaml"; auto-format = true; }

    { name = "markdown"; formatter = biome "markdown"; auto-format = true; }

    { name = "graphql"; formatter = biome "graphql"; auto-format = true; }
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
