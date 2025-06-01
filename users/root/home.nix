{ pkgs, ... }:
{
  home = {
    file = {
      ".rsync".source = ./rsync;
    };
    homeDirectory = "/root";
    stateVersion = "25.05"; # Please read the comment before changing.
    username = "root";
  };
}
