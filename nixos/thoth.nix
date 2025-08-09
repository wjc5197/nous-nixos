{
  pkgs,
  ...
}:
{
  environment = {
    systemPackages = with pkgs; [
      wayland-utils
      wl-clipboard
      xsel
    ];
  };
  imports = [
    ./modules/fish.nix
    ./modules/nixos-common.nix
  ];
  programs = {
    sway = {
      enable = true;
      wrapperFeatures.gtk = true;
    };
  };

  services = {
    displayManager = {
      sddm = {
        enable = true;
        wayland = {
          enable = true;
        };
      };
    };
  };
  system.stateVersion = "25.05"; # Did you read the comment?
}
