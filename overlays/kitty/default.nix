channels: final: prev: {
  kitty = channels.unstable.kitty.overrideAttrs (o: {
    postInstall = (o.postInstall or "") + ''
      cp ${./kitty.png} $out/share/icons/hicolor/256x256/apps/kitty.png
      rm $out/share/icons/hicolor/scalable/apps/kitty.svg
    '';
  });
}
