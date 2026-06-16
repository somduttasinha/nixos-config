{ pkgs, ... }: {
  programs.fish = {
    enable = true;
    shellAliases = {
      cl    = "clear";
      v     = "nvim";
      lt    = "cd /home/som/longshot/projects";
      ta    = "tmux a";
      llg   = "/home/som/go/bin/lg";
      lg    = "lazygit";
      ai    = "claude";
      sv    = "source .venv/bin/activate.fish";
      db    = "cd '/home/som/Seamless Dropbox/Som Sinha'";
    };
    shellInit = ''
      # PATH additions
      fish_add_path ~/.local/bin
      fish_add_path ~/go/bin
      fish_add_path ~/.pyenv/bin
      fish_add_path ~/.cargo/bin
      fish_add_path ~/.opencode/bin

      # Go
      set -gx GOPATH $HOME/go
      set -gx GOPRIVATE github.com/longshotsyndicate

      # Python / pyenv
      set -gx PYENV_ROOT $HOME/.pyenv
      if command -q pyenv
        pyenv init - | source
      end

      # NixOS: propagate nix-ld libs so dynamically linked packages (e.g. ray) work outside nix-shell
      set -gx LD_LIBRARY_PATH $NIX_LD_LIBRARY_PATH $LD_LIBRARY_PATH

      # Longshot / work
      set -gx BURNS_ENV DEV
      set -gx CONFIG_URL http://config.longshot.internal:8033
      set -gx SERVICE_HOST multi.dub.dev.longshot.internal
      set -gx DOCKERHUB_USERNAME somsinhalongshot
      # Secrets (GH_TOKEN, DOCKERHUB_PASSWORD) are loaded from ~/.config/fish/secrets.fish
      if test -f ~/.config/fish/secrets.fish
        source ~/.config/fish/secrets.fish
      end
    '';
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      fish_vi_key_bindings # Enable vim motions
    '';
    plugins = [
      { name = "grc"; src = pkgs.fishPlugins.grc.src; }
      {
        name = "z";
        src = pkgs.fetchFromGitHub {
          owner = "jethrokuan";
          repo = "z";
          rev = "e0e1b9dfdba362f8ab1ae8c1afc7ccf62b89f7eb";
          sha256 = "0dbnir6jbwjpjalz14snzd3cgdysgcs3raznsijd6savad3qhijc";
        };
      }
    ];
  };
}
