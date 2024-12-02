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
    yazi
    gcc
    git
    gnumake
    gnupg
    httpie
    killall
    lsof
    neofetch
    ripgrep
    watchexec
    sqlite
    unzip
  ] ++ (lib.optionals pkgs.stdenv.isDarwin [
    terminal-notifier
    coreutils
  ]);
}
