{ ... }: {
  home.file."pictures/wallpapers" = {
    source = ./wallpapers;
    recursive = true;
  };
}
