{ pkgs, ... }: {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    theme = "${pkgs.rofi}/share/rofi/themes/Monokai.rasi";
  };
}
