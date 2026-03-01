{ ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false;  # We manage config via xdg.configFile
  };
  xdg.configFile."hypr".source = ./configs/hypr;
}
