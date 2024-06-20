{ config, ... }: {
  home.file.".hammerspoon/init.lua" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.d.dotfiles}/apps/hammerspoon/init.lua";
  };
  home.file.".hammerspoon/lgtv.lua" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.d.dotfiles}/apps/hammerspoon/lgtv.lua";
  };
}
