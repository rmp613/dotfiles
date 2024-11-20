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
    # helix-editor
    rainfrog
    warp-terminal

    # Development
    gleam
    bun
    nodePackages
    stylua
    vscode
    vscode-extensions

    # Apps
    # _1password
    # _1password-gui
    # android-studio
    # firefox-devedition-bin
    # obsidian
    zoom-us

    # Other
    nerdfonts
    ;
}
