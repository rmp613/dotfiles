{ pkgs, ... }:

{
  imports = [
    ../modules
    ./hm.nix
    ./nix.nix
    ./pkgs.nix
    ./shells.nix
    ./tmpfs.nix
  ];

  # Fonts
  fonts = {
    packages = with pkgs; [
      cascadia-code
      fira-code
      jetbrains-mono
      powerline-symbols
      # Renamed to noto-fonts-color-emoji in 23.11
      noto-fonts-emoji
      # nerd-fonts.fonts.NerdFontsSymbolsOnly
      nerd-fonts.symbols-only
    ];
  };

  # Localization
  # time.timeZone = "Europe/London";
}
