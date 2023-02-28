{ pkgs, ... }:

{
  home.packages = with pkgs.fishPlugins; [
    sponge
    autopair-fish
    foreign-env
  ];

  programs.fish = {
    enable = true;

    shellInit = ''
      # Disable greeting message
      set -U fish_greeting

      # Bind CTRL+Backspace to delete a word
      bind \b backward-kill-word

      # Same as 👆 but for VSCode Intergrated Terminal
      bind u0017 backward-kill-word

      # CTRL (Shift?) + Left or Right
      bind \e\[1\;6C forward-word
      bind \e\[1\;6D backward-word
    '';

    plugins = [
      {
        name = "history-merge";
        src = pkgs.fetchFromGitHub {
          owner = "2m";
          repo = "fish-history-merge";
          rev = "7e415b8ab843a64313708273cf659efbf471ad39";
          sha256 = "oy32I92sYgEbeVX41Oic8653eJY5bCE/b7EjZuETjMI=";
        };
      }
    ];
  };
}
