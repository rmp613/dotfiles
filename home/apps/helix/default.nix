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
        space.W = ":q";
        "C-d" = ["half_page_down" "goto_window_center"];
        "C-u" = ["half_page_up" "goto_window_center"];        # backspace = "delete_char_backward";
        # del = "delete_char_forward";
      };
      insert = {
        # down = ["normal_mode" "move_line_down"];
        # up = ["normal_mode" "move_line_up"];
        # left = ["normal_mode" "move_char_left"];
        # right = ["normal_mode" "move_char_right"];
      };
    };
    editor = {
      auto-format = true;
      bufferline = "always";
      color-modes = true;
      cursorline = true;
      indent-guides.render = true;
      line-number = "relative";
      soft-wrap.enable = true;
      file-picker = {
        hidden = false;
      };
      # FIXME: remove once https://github.com/helix-editor/helix/issues/1475 is fixed
      # auto-info = false;

      lsp = {};
      cursor-shape = {
        insert = "bar";
        normal = "block";
        select = "underline";
      };

      statusline = {
        mode.normal = "";
        mode.insert = "";
        mode.select = "";

        left = [ "mode" "spacer" "spinner" "file-name" ];
        right = [
          "diagnostics"
          "position"
          "primary-selection-length"
          "file-encoding"
          "file-type"
          "version-control"
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
        extraPackages = with pkgs; [ helix-gpt ];
      };

      # helix-gpt = {
      #   enable = true;
      # };
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
