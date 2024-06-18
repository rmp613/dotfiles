{ config, ... }: {
  home.file.".hammerspoon/init.lua" = {
    source = config.lib.file.mkOutOfStoreSymlink ./init.lua;
  };
  home.file.".hammerspoon/lgtv.lua" = {
    source = config.lib.file.mkOutOfStoreSymlink ./lgtv.lua;
  };
}
