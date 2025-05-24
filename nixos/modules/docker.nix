{
  lib,
  ...
}:
{
  networking.firewall.trustedInterfaces = [
    "docker0"
  ];
  systemd = {
    services = {
      docker.wantedBy = lib.mkForce [ ];
    };
  };
  virtualisation = {
    docker = {
      enable = true;
    };
  };
}
