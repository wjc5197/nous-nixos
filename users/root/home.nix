{ pkgs, ... }:
{
  home = {
    file = {
      ".rsync".source = ./rsync;
    };
    homeDirectory = "/root";
    stateVersion = "24.11"; # Please read the comment before changing.
    username = "root";
  };
}
