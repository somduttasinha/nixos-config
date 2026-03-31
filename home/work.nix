{ lib, ... }: {
  imports = [
    ./default.nix
    ./dropbox.nix
    ./aerc.nix
  ];

  programs.git.settings.user.email = lib.mkForce "som@chronos";
}
