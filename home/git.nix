{ ... }: {
  programs.git = {
    enable = true;
    lfs.enable = true;
    settings.user.name = "Som Sinha";
    settings.user.email = "somdsinha@gmail.com";
    settings.core.editor = "nvim";
    settings.url."ssh://git@github.com/".insteadOf = "https://github.com/";
  };
}
