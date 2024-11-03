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
        show_notifications = true;
        min_time_to_notify = 10000;
      };
      time = {
        disabled = false;
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

      aws.disabled = true;
      azure.disabled = true;
      buf.disabled = true;
      c.disabled = true;
      cmake.disabled = true;
      conda.disabled = true;
      container.disabled = true;
      crystal.disabled = true;
      daml.disabled = true;
      dart.disabled = true;
      deno.disabled = true;
      docker_context.disabled = true;
      dotnet.disabled = true;
      elixir.disabled = true;
      env_var.disabled = true;
      fennel.disabled = true;
      gcloud.disabled = true;
      golang.disabled = true;
      gradle.disabled = true;
      guix_shell.disabled = true;
      haskell.disabled = true;
      haxe.disabled = true;
      helm.disabled = true;
      java.disabled = true;
      jobs.disabled = true;
      julia.disabled = true;
      kotlin.disabled = true;
      kubernetes.disabled = true;
      lua.disabled = true;
      nim.disabled = true;
      nix_shell.disabled = true;
      ocaml.disabled = true;
      openstack.disabled = true;
      package.disabled = true;
      perl.disabled = true;
      php.disabled = true;
      purescript.disabled = true;
      python.disabled = true;
      ruby.disabled = true;
      rust.disabled = true;
      scala.disabled = true;
      shlvl.disabled = true;
      singularity.disabled = true;
      swift.disabled = true;
      terraform.disabled = true;
      vagrant.disabled = true;
      zig.disabled = true;
    };
  };
}
