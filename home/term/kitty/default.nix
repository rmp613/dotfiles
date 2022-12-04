{ theme, ... }:

{
  home.sessionVariables = {
    TERMINAL = "kitty";
  };

  programs.kitty = {
    enable = true;

    font = {
      name = "FiraCode Nerd Font";
      size = 11;
    };

    theme = theme;
    keybindings = import ./keybindings.nix;
    settings = {
      confirm_os_window_close = 0;
      linux_display_server = "x11";
    };
  };
}
