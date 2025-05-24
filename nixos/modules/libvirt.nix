{
  lib,
  pkgs,
  ...
}:
{
  networking.firewall.trustedInterfaces = [
    "virbr0"
  ];
  systemd = {
    services = {
      libvirtd.wantedBy = lib.mkForce [ ];
      libvirt-guests.wantedBy = lib.mkForce [ ];
    };
  };
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        ovmf = {
          enable = true;
          packages = [
            (pkgs.OVMF.override {
              secureBoot = true;
              tpmSupport = true;
            }).fd
          ];
        };
        package = pkgs.qemu_kvm;
        runAsRoot = true;
        swtpm.enable = true;
        vhostUserPackages = [ pkgs.virtiofsd ];
      };
    };
  };
}
