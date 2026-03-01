{ pkgs, ... }: {
  programs.btop.enable = true;
  xdg.configFile."btop".source = ./configs/btop;
}
