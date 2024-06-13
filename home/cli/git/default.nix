{ config, pkgs, lib, user, ... }:

let
  aliases = {
    g = "git status";
    ga = "git add .";
    gcm = "git commit -m";
    gco = "git checkout";
    gd = "git diff";
    gl = "git log";
    grs = "git restore";
    gs = "git switch";
    gp = "git pull";
    gP = "git push";
  };
in

{
  imports = [
    ./delta.nix
    ./ui.nix
  ];

  home.packages = with pkgs; [
    git-ignore
  ];

  programs = {
    fish.shellAbbrs = aliases;

    git = {
      enable = true;

      userName = "Riordan Pawley";
      userEmail = "riordan@dogg.com.au";

      # # Signing is done via the 1Password app
      # signing = {
      #   signByDefault = true;
      #   key = config.d.apps.onepassword.ssh.key;
      # };

      extraConfig = {
        init.defaultBranch = "main";
        core = {
          editor = "hx";
        };
        # gpg = {
        #   format = "ssh";
        #   ssh.program = config.d.apps.onepassword.ssh.sign;
        # };

        log = {
          decorate = true;
          abbrevCommit = true;
        };

        pull.rebase = false;

        # Autostash on "git pull ..."
        merge = {
          autoStash = true;
          conflictStyle = "diff3";
        };
        rerere.enabled = true;
        help.autocorrect = 1;
        rebase.autoStash = true;

        push.autoSetupRemote = true;
      };

      ignores = lib.splitString "\n" (builtins.readFile ./gitignore_global);
    };
  };
}
