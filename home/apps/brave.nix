{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.d.apps.brave;

  extensions = {
    _1password = "aeblfdkhhhdcdjpifhhbdiojplfjncoa";
    dont-f-with-paste = "nkgllhigpcljnhoakjkgaieabnkmgdkb";
    google-translate = "aapbdbdomjkkjkaonfhkkikfgjllcleb";
    grammarly = "kbfnbcaeplbcioakkpcpgfkobkghlhen";
    json-formatter = "bcjindcccaagfpapjjmafapmmgkkhgoa";
    netflix-extended = "gjcgfkhgpaccjpjokgpekpgpphgaanej";
    netflix-imdb-rating = "lpgajkhkagnpdjklmpgjeplmgffnhhjj";
    omni = "mapjgeachilmcbbokkgcbgpbakaaeehi";
    react-developer-tools = "fmkadmapgofadopljbjfkapdkoienihi";
    sourcegraph = "dgjhfomjieaadpoljlnidmbgkdffpack";
  };

  opts = {
    okta = "glnpjglilkicbckjpbgcfkogebgllemb";
  };
in

{
  options.d.apps.brave = {
    enable = mkOption {
      type = types.bool;
      default = true;
    };

    withOkta = mkOption {
      type = types.bool;
      default = false;
    };
  };

  config = mkIf cfg.enable {
    programs.chromium = {
      enable = true;
      package = pkgs.brave;

      extensions = map (e: { id = e; })
        ((attrValues extensions) ++
          optionals cfg.withOkta [ opts.okta ]);
    };

    d.fs.persisted = mkIf cfg.enable {
      directories = [ ".config/BraveSoftware/Brave-Browser" ];
    };
  };
}
