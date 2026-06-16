{ ... }: {
  programs.tmux = {
    enable = true;
    newSession = false;
    extraConfig = ''
      set-option -g update-environment "WAYLAND_DISPLAY"
      bind '"' split-window -c "#{pane_current_path}"
      bind % split-window -h -c "#{pane_current_path}"
      bind c new-window -c "#{pane_current_path}"
    '';
  };
}
