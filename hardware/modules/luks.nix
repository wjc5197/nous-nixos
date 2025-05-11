{
  boot = {
    initrd = {
      availableKernelModules = [
        "aesni_intel"
        "cryptd"
      ];
      luks.devices.crypt.device = "/dev/disk/by-label/nixos";
    };
    loader.grub.enableCryptodisk = true;
  };
}
