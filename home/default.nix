{ inputs, pkgs, pkgs-unstable, pkgs-master, ... }: {
  imports = [
    ./hyprland.nix
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
    sxiv
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
    "image/*" = ["sxiv.desktop"];
    "video/*" = ["mpv.desktop"];
  };

  programs.home-manager.enable = true;
}
