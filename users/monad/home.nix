{
  dpi,
  pkgs,
  ...
}:
{
  home = {
    homeDirectory = "/home/monad";
    stateVersion = "25.05"; # Please read the comment before changing.
    username = "monad";
  };
  imports = [
    ../modules/user-home-common.nix
  ];
}
