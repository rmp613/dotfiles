channels: final: prev: {
  __dontExport = true;

  # Use the latest version for the following packages
  inherit (channels.unstable)
    # NixOS
    nix-ld

    # Terminal
    bat
    fd
    fzf
    navi
    starship
    wezterm
    zoxide

    # Development
    helix
    neovim
    vscode
    vscode-extensions

    # Apps
    _1password
    _1password-gui
    android-studio
    brave
    firefox-devedition-bin
    obsidian
    zoom-us

    # Other
    nerdfonts
    ;
}
