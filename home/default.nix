{ inputs, pkgs, pkgs-unstable, pkgs-master, ... }: {
  imports = [
    ./hyprland.nix
    ./mako.nix
    ./tmux.nix
    ./waybar.nix
    ./ghostty.nix
    ./fish.nix
    ./git.nix
    ./neovim.nix
    ./starship.nix
    ./lazygit.nix
    ./btop.nix
    ./rofi.nix
    ./direnv.nix
    ./gtk.nix
    ./wallpapers.nix
  ];

  home.username = "som";
  home.homeDirectory = "/home/som";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    hello
    neovide
    zathura
    imv
    grim
    slurp
    cliphist
    wl-clipboard
    hypridle
    hyprlock
    playerctl
    texlive.combined.scheme-full
    texmaker
    tree-sitter
    pavucontrol
    xdotool
    llvmPackages_20.clang-tools
    python314
    lazygit
    htop
    w3m
    gnumake
    gcc
    jq
    sshpass
  ] ++ (with pkgs-unstable; [
    ruff
    ty
    opencode
    claude-code
  ]);

  home.sessionVariables = {
    EDITOR = "neovim";
  };

  xdg.mimeApps.defaultApplications = {
    "text/plain" = ["neovide.desktop"];
    "application/pdf" = ["zathura.desktop"];
    "image/*" = ["imv.desktop"];
    "video/*" = ["mpv.desktop"];
  };

  xdg.configFile."imv/config".text = ''
    [binds]
    y = exec wl-copy --type "$(xdg-mime query filetype "$imv_current_file")" < "$imv_current_file"
  '';

  programs.home-manager.enable = true;
}
