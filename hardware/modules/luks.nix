{
  boot = {
    initrd = {
      availableKernelModules = [
        "cryptd"
      ];
      luks.devices.crypt.device = "/dev/disk/by-label/nixos";
    };
    loader.grub.enableCryptodisk = true;
  };
}
