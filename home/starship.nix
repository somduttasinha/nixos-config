{ ... }: {
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      format = "$all$character";
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
        vimcmd_symbol = "[❮](bold green)";
      };
      directory = {
        truncation_length = 3;
        truncation_symbol = "…/";
      };
      git_branch = {
        symbol = " ";
      };
      git_status = {
        ahead = "⇡";
        behind = "⇣";
        diverged = "⇕";
        renamed = "»";
        deleted = "✘";
      };
    };
  };
}
