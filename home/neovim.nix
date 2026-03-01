{ inputs, pkgs, ... }: {
  programs.neovim.enable = true;
  xdg.configFile."nvim".source = inputs.nvim-config;
}
