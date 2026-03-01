{ pkgs, ... }: {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
  };
  xdg.configFile."rofi".source = ./configs/rofi;
}
