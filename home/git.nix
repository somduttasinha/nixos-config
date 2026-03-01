{ ... }: {
  programs.git = {
    enable = true;
    settings.user.name = "som";
    settings.user.email = "somdsinha@gmail.com";
  };
}
