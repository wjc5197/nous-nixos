{
  efiSysMountPoint,
}:
{
  inputs,
  ...
}:
{
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
        inherit efiSysMountPoint;
      };
      limine = {
        efiSupport = true;
        enable = true;
        maxGenerations = 32;
        secureBoot.enable = true;
      };
    };
  };
}
