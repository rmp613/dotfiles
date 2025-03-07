{ config, pkgs, lib, theme, ... }:

with lib;

let
  cfg = config.d.apps.helix;

  themeMapping = {
    catppuccin = "catppuccin_mocha";
  };

  settings = {
    theme = themeMapping.${theme};
    keys = {
      normal = {
        space.F = "file_picker_in_current_buffer_directory";
        space.W = ":quit";
        space."," = {
          # b = ":sh helix-wezterm.sh blame";
          e = ":sh helix-wezterm.sh explorer";
          f = ":sh helix-wezterm.sh fzf";
          g = ":sh helix-wezterm.sh lazygit";
          # o = ":sh helix-wezterm.sh open";
          t = ":sh helix-wezterm.sh term";
          r = ":lsp-restart";
          a = ":write-all";
          R = [ ":config-reload" ":lsp-restart" ":reload-all" ];
          # R = { label = "Reload"; command = [":config-reload" ":lsp-restart" ":reload-all"]; };
          # t = ":sh helix-wezterm.sh test";
        };
        "C-s" = ":write";
        "C-w" = ":buffer-close";
        # "C-S-r" = ":lsp-restart";
        # "C-S-s" = ":write-all";
        # "C-S-w" = ":buffer-close-others";
        # "C-A-r" = ":reload-all";
        # on next release :)
        # minus = {
        #   "minus" = { label = "Select sub word"; command = [ "move_prev_sub_word_start" "move_next_sub_word_end" ]; };
        #   "w" = "move_next_sub_word_start";
        #   "b" = "move_prev_sub_word_start";
        #   "e" = "move_next_sub_word_end";
        # };
      };
      select = {
        # on next release :)
        # minus = {
        #   "minus" = { label = "Select sub word"; command = [ "extend_prev_sub_word_start" "extend_next_sub_word_end" ]; };
        #   "w" = "extend_next_sub_word_start";
        #   "b" = "extend_prev_sub_word_start";
        #   "e" = "extend_next_sub_word_end";
        # };
      };
    };
    editor = {
      auto-format = true;
      shell = [ "fish" "-c" ];
      bufferline = "always";
      jump-label-alphabet = "acdefhijklmnorstux";
      color-modes = true;
      # completion-replace = true;
      cursorline = true;
      auto-pairs = false;
      indent-guides.render = true;
      line-number = "relative";
      soft-wrap.enable = true;
      file-picker = {
        hidden = false;
      };
      # FIXME: remove once https://github.com/helix-editor/helix/issues/1475 is fixed
      # auto-info = false;
      end-of-line-diagnostics = "hint";

      inline-diagnostics = {
        cursor-line = "warning";
        # other-lines = "error";

      };
      lsp = { };
      cursor-shape = {
        insert = "bar";
        normal = "block";
        select = "underline";
      };

      statusline = {
        mode.normal = "";
        mode.insert = "";
        mode.select = "";

        left = [  "spinner" "file-name" ];
        right = [
          "diagnostics"
          "position"
          # "primary-selection-length"
          # "file-encoding"
          # "file-type"
          # "version-control"
          "spacer"
          "position-percentage"
        ];
      };
    };
  };
in

{
  imports = [
    ./lua.nix
    ./nix.nix
    # ./prettier.nix
    ./prisma.nix
    ./typescript.nix
  ];

  options.d.apps.helix = {
    enable = mkOption {
      type = types.bool;
      default = true;
    };
  };

  config = mkIf cfg.enable {
    # xdg.mimeApps.associationsAdded = {
    #   "application/javascript" = "Helix.desktop"; 
    #   "application/json" = "Helix.desktop";
    #   "application/yaml" = "Helix.desktop";
    #   "text/plain" = "Helix.desktop";
    # };
    xdg.mimeApps.defaultApplications = {
      "application/javascript" = "Helix.desktop";
      "application/json" = "Helix.desktop";
      "application/yaml" = "Helix.desktop";
      "text/plain" = "Helix.desktop";
    };
    programs = {
      helix = {
        enable = true;
        settings = settings;
      };
    };

    d.shell = {
      variables = {
        EDITOR = "hx";
      };

      aliases = {
        vim = "hx";
      };
    };

    # hx --health
    # Languages servers & tools
    home.packages =
      (with pkgs.nodePackages; [
        bash-language-server
        yaml-language-server
      ]) ++

      (with pkgs; [
        delve
        gopls
        lldb
        marksman
        nil
        python311Packages.python-lsp-server
        taplo
        terraform-ls
      ]);
  };
}
