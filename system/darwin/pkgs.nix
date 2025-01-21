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
    # command line apps
    brews = [
      "git"
      # "CTRLSpice/tap/otel-desktop-viewer"
      "otel-tui"
      "neonctl"
      "podman"
      "git-sizer"
      "bottom"
    ];
    # graphical apps
    casks = [
      # "gdu"
      # https://github.com/NixOS/nixpkgs/issues/254944
      # "1password"
      # "1password-cli"
      # "docker"
      # "google-chrome"
      # "scroll-reverser"
      # "openscad-snapshot"
      "discord"
      "warp"
      "podman-desktop"
      "ghostty"
      # "font-jetbrains-mono"
      # "font-jetbrains-mono-nerd-font"
      "google-chrome"
      "hammerspoon"
      "slack"
      "zoom"
      "visual-studio-code"
      "arc"
      "linear-linear"
      # "orbstack"
      "rectangle"
      "soundsource"
      "raycast"
      "iina"
      "microsoft-teams"
    ];

    taps = [
      "supabase/tap"
      "ymtdzzz/tap"
    ];
  };
}
