{ pkgs, ... }:

let
  biomePkg = pkgs.biome;

  cfg = {
    indent = {
      tab-width = 2;
      unit = " ";
    };

    auto-format = true;
    language-servers = [
      { name = "typescript-language-server"; except-features = [ "format" ]; }
      "biome"
    ];
  };

  lspBinPath = lang:
    with pkgs.nodePackages;

    if lang == "typescript"
    then "${typescript-language-server}/bin/typescript-language-server"
    else "${vscode-langservers-extracted}/bin/vscode-${lang}-language-server";

  biomeCommand = "./node_modules/@biomejs/biome/bin/biome";

  biomeCfg = ext: {
    # so nix only has 1.7.3 as latest - we use local 
    # todo: add package manager detection?
    command = biomeCommand;
    args = [ "format" "--use-server" "--stdin-file-path=file.${ext}" ];
  };
in

{
  home.packages = with pkgs.nodePackages; [
    typescript-language-server
    vscode-langservers-extracted
    biomePkg
  ];

  programs.helix.languages = {
    language = [
      (cfg // {
        name = "html";
        language-servers = [ "vscode-html-language-server" ];
        # formatter = biome "html";
        auto-format = true;
      })
      (cfg // {
        name = "css";
        language-servers = [ "vscode-css-language-server" ];
        # formatter = biome "css";
        auto-format = true;

      })
      (cfg // {
        name = "json";
        language-servers = [ "vscode-json-language-server" ];
        # formatter = biome "json";
        auto-format = true;

      })
      (cfg // {
        name = "tsx";
        formatter = biomeCfg "tsx";
      })
      (cfg // {
        name = "typescript";
        formatter = biomeCfg "ts";
      })
      (cfg // {
        name = "jsx";
        formatter = biomeCfg "jsx";
      })
      (cfg // {
        name = "javascript";
        formatter = biomeCfg "js";
      })
    ];

    language-server = {
      biome = {
        command = biomeCommand;
        args = [ "lsp-proxy" ];
      };
      typescript-language-server.command = lspBinPath "typescript";
      vscode-css-language-server.command = lspBinPath "css";
      vscode-html-language-server.command = lspBinPath "html";
      vscode-json-language-server.command = lspBinPath "json";

      # eslint = {
      #   args = [ "--stdio" ];
      #   command = lspBinPath "eslint";
      #   config = {
      #     format = true;
      #     nodePath = "";
      #     onIgnoredFiles = "off";
      #     packageManager = "npm";
      #     quiet = false;
      #     rulesCustomizations = [ ];
      #     run = "onType";
      #     useESLintClass = false;
      #     validate = "on";
      #     codeAction = {
      #       disableRuleComment = {
      #         enable = true;
      #         location = "separateLine";
      #       };
      #       showDocumentation.enable = true;
      #     };
      #     codeActionOnSave.mode = "all";
      #     experimental = { };
      #     problems.shortenToSingleLine = false;
      #     workingDirectory.mode = "auto";
      #   };
      # };
    };
  };
}
