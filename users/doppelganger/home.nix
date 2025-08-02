{
  dpi,
  pkgs,
  ...
}:
{
  home = {
    homeDirectory = "/home/doppelganger";
    stateVersion = "25.05"; # Please read the comment before changing.
    username = "doppelganger";
  };
  imports = [
    ../modules/user-home-common.nix
  ];
}
