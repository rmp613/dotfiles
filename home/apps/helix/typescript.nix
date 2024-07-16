{ pkgs, ... }:

let
  biomePkg = pkgs.biome;
  # helixGptPath = helix-gpt;
  # helixGptCfg = {
  #   command = helixGptBinPath;
  #   args = [ "--handler" "copilot" "--logFile"  "${config.home.homeDirectory}/.logs/helix-gpt.log" ];
  # };
  cfg = {
    indent = {
      tab-width = 2;
      unit = " ";
    };

    auto-format = true;
    language-servers = [
      { name = "typescript-language-server"; except-features = [ "format" ]; }
      # "gpt"
      "biome"
    ];
  };
  # doesn't exist yet
  # vtsls = pkgs.nodePackages."@vtsls/language-server";
  lspBinPath = lang:
    with pkgs.nodePackages;

    if lang == "typescript"
    then "${typescript-language-server}/bin/typescript-language-server"
    else "${vscode-langservers-extracted}/bin/vscode-${lang}-language-server";
  # trial vtsls instead
  # then "pnpm"
  # else "${vscode-langservers-extracted}/bin/vscode-${lang}-language-server";

  biomeCommand = "./node_modules/@biomejs/biome/bin/biome";

  biomeCfg = ext: {
    # so nix only has 1.7.3 as latest - we use local 
    # todo: add package manager detection?
    command = biomeCommand;
    args = [ "check" "--write" "--use-server" "--stdin-file-path=file.${ext}" ];
  };
in

{
  home.packages = with pkgs.nodePackages; [
    typescript-language-server
    vscode-langservers-extracted
    biomePkg
    # pkgs.nodejs_22
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
        # language-id = "typescriptreact";
        formatter = biomeCfg "tsx";
      })
      (cfg // {
        name = "typescript";
        # language-id = "typescript";
        formatter = biomeCfg "ts";
      })
      (cfg // {
        name = "jsx";
        # language-id = "javascriptreact";
        formatter = biomeCfg "jsx";
      })
      (cfg // {
        name = "javascript";
        # language-id = "javascript";
        formatter = biomeCfg "js";
      })
    ];

    language-server = {
      # gpt = {
      #   command = "helix-gpt";
      #   args = [ "--handler" "copilot" "--logFile" "${config.home.homeDirectory}/~/.logs/helix-gpt.log" ];
      # };
      biome = {
        command = biomeCommand;
        args = [ "lsp-proxy" ];
      };
      # would use args = [ "--stdio" ]
      # but this error happens https://github.com/denoland/deno/issues/23133
      # typescript-language-server = { command = lspBinPath "typescript"; args = [ "vtsls" "--stdio" ]; config = { vtsls.autoUseWorkspaceTsdk = true; typescript = { tsserver = { maxTsServerMemory = 8192; experimental = { enableProjectDiagnostics = true; }; }; }; }; };
      typescript-language-server = { command = lspBinPath "typescript"; config = { maxTsServerMemory = 8192; experimental = { enableProjectDiagnostics = true; }; }; };
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
