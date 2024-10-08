{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bun
    helix
    neovim
    wezterm

    # Utils
    cmake
    # coreutils
    curl
    entr
    fd
    file
    fzf
    wget
    broot
    gcc
    git
    gnumake
    gnupg
    httpie
    killall
    lsof
    neofetch
    ripgrep
    sqlite
    unzip
  ] ++ (lib.optionals pkgs.stdenv.isDarwin [
    terminal-notifier
    coreutils
  ]);
}
