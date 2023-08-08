{ theme, ... }:

let
  themeMapping = {
    catppuccin = "catppuccin_mocha";
  };
in

{
  programs.helix.settings = {
    theme = themeMapping.${theme};

    editor = {
      bufferline = "never";
      color-modes = true;
      cursorline = true;
      indent-guides.render = true;
      line-number = "relative";
      soft-wrap.enable = true;

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
}
