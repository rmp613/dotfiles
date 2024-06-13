{
  imports = [
    ./themes.nix
  ];

  d.shell.variables = {
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

      cmd_duration = {
        format = "[$duration]($style)";
      };

      directory = {
        read_only = " ";
        truncate_to_repo = false;
      };
      git_branch.symbol = " ";
      git_status.format = "[$ahead_behind$untracked$modified]($style) ";
      nix_shell = {
        format = "in [$symbol$state(\\($name\\))]($style) ";
        symbol = "❄️ ";
        impure_msg = "";
        pure_msg = "pure ";
      };

      battery.disabled = true;
      package.disabled = true;
    };
  };
}
