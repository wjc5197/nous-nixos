{
  lib,
  ...
}:
{
  networking.firewall.trustedInterfaces = [
    "waydroid0"
  ];
  systemd = {
    services = {
      waydroid-container.wantedBy = lib.mkForce [ ];
    };
  };
  virtualisation = {
    waydroid = {
      enable = true;
    };
  };
}
