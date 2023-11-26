{
  imports = [
    ./themes.nix
  ];

  home.sessionVariables = {
    STARSHIP_LOG = "error";
  };

  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      character = {
        success_symbol = "[󱞩](bold prompt)";
        error_symbol = "[󱞩](bold red)";
        vicmd_symbol = "[](bold prompt)";
      };

      battery = {
        disabled = true;
      };

      cmd_duration = {
        format = "[$duration]($style)";
      };

      aws = {
        symbol = " ";
      };

      buf = {
        symbol = " ";
      };

      c = {
        symbol = " ";
      };

      conda = {
        symbol = " ";
      };

      dart = {
        symbol = " ";
      };

      directory = {
        style = "bold lavender";
        read_only = " ";
      };

      docker_context = {
        symbol = " ";
      };

      elixir = {
        symbol = " ";
      };

      elm = {
        symbol = " ";
      };

      fossil_branch = {
        symbol = " ";
      };

      git_branch = {
        symbol = " ";
      };

      golang = {
        symbol = " ";
      };

      guix_shell = {
        symbol = " ";
      };

      haskell = {
        symbol = " ";
      };

      haxe = {
        symbol = "⌘ ";
      };

      hg_branch = {
        symbol = " ";
      };

      hostname = {
        ssh_symbol = " ";
      };

      java = {
        symbol = " ";
      };

      julia = {
        symbol = " ";
      };

      lua = {
        symbol = " ";
      };

      memory_usage = {
        symbol = " ";
      };

      meson = {
        symbol = "喝 ";
      };

      nim = {
        symbol = " ";
      };

      nix_shell = {
        format = "in [$symbol$state(\\($name\\))]($style) ";
        symbol = " ";
        impure_msg = "";
        pure_msg = "pure ";
      };

      nodejs = {
        symbol = " ";
      };

      os.symbols = {
        Alpaquita = " ";
        Alpine = " ";
        Amazon = " ";
        Android = " ";
        Arch = " ";
        Artix = " ";
        CentOS = " ";
        Debian = " ";
        DragonFly = " ";
        Emscripten = " ";
        EndeavourOS = " ";
        Fedora = " ";
        FreeBSD = " ";
        Garuda = "﯑ ";
        Gentoo = " ";
        HardenedBSD = "ﲊ ";
        Illumos = " ";
        Linux = " ";
        Mabox = " ";
        Macos = " ";
        Manjaro = " ";
        Mariner = " ";
        MidnightBSD = " ";
        Mint = " ";
        NetBSD = " ";
        NixOS = " ";
        OpenBSD = " ";
        openSUSE = " ";
        OracleLinux = " ";
        Pop = " ";
        Raspbian = " ";
        Redhat = " ";
        RedHatEnterprise = " ";
        Redox = " ";
        Solus = "ﴱ ";
        SUSE = " ";
        Ubuntu = " ";
        Unknown = " ";
        Windows = " ";
      };

      package = {
        symbol = " ";
        disabled = true;
      };

      pijul_channel = {
        symbol = "🪺 ";
      };

      python = {
        symbol = " ";
      };

      rlang = {
        symbol = "ﳒ ";
      };

      ruby = {
        symbol = " ";
      };

      rust = {
        symbol = " ";
      };

      scala = {
        symbol = " ";
      };

      spack = {
        symbol = "🅢 ";
      };
    };
  };
}
