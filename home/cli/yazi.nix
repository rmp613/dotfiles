{  ... }:
# let
  # yazi-plugins = pkgs.fetchFromGitHub {
  #   owner = "yazi-rs";
  #   repo = "plugins";
  #   rev = "...";
  #   hash = "sha256-...";
  # };
# in
{
  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    enableZshIntegration = true;

    shellWrapperName = "y";

  #   starship = pkgs.fetchFromGitHub {
  #     owner = "Rolv-Apneseth";
  #     repo = "starship.yazi";
  #     rev = "...";
  #     sha256 = "sha256-...";
  #   };
  #   initLua = ''
		# 	require("starship"):setup()
		# '';
  };
}
