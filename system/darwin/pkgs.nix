{
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "uninstall";
    };

    masApps = {
      Xcode = 497799835;
      Slack = 803453959;
      Bitwarden = 1352778147;
    };
    brews = [
      # "CTRLSpice/tap/otel-desktop-viewer"
      # "ymtdzzz/tap/otel-tui"
    ];
    casks = [
      # "gdu"
      # https://github.com/NixOS/nixpkgs/issues/254944
      # "1password"
      # "1password-cli"
      # "docker"
      # "google-chrome"
      # "raycast"
      # "scroll-reverser"
      # "openscad-snapshot"
      "exercism"
      "discord"
      # "font-jetbrains-mono"
      # "font-jetbrains-mono-nerd-font"
      "google-chrome"
      "hammerspoon"
      "slack"
      "zoom"
      "visual-studio-code"
      "arc"
      "linear-linear"
      "orbstack"
      "rectangle"
      "soundsource"
      "istat-menus"
      "raycast"
      "iina"
      "tableplus"
      "microsoft-teams"
    ];

    taps = [
      "homebrew/cask-versions"
    ];
  };
}
