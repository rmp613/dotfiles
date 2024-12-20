{ pkgs, lib, user, version, ... }:

let
  homePrefix =
    if pkgs.stdenv.isDarwin
    then "/Users"
    else "/home";
in

{
  imports = [
    ./apps
    ./cli
    ./dev
    ./autostart.nix
  ];

  home = {
    username = user;
    homeDirectory = lib.mkForce "${homePrefix}/${user}";
    stateVersion = version;
    packages = with pkgs; [exercism];
  };

  xdg.enable = true;
  # programs.ssh.enable = true;
  programs.home-manager.enable = true;
  xsession.numlock.enable = pkgs.stdenv.isLinux;

  d.fs.persisted = {
    directories = [
      # "Desktop"
      # "Documents"
      # "Downloads"
      # "Music"
      # "Pictures"
      # "Videos"
      # "github"
      ".dotfiles"
      # ".ssh"

      # Gnome Keyring
      ".local/share/keyrings"
    ];
  };
}
