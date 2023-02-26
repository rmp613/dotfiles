{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim-unwrapped

    # Langauges
    python3
    python3.pkgs.pip
    rustc
    sqlite

    # Utils
    cargo
    cmake
    coreutils
    curl
    fd
    fzf
    git
    gcc
    gnupg
    gnumake
    killall
    lsof
    neofetch
    ripgrep
    unzip
  ];
}
