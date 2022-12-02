{ config, lib, pkgs, ... }:

{
  imports = 
    [
      ./hardware-configuration.nix
    ];

  # BOOTLOADER
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi" ;

  networking.hostName = "nixlab";
	
  console.keyMap = "us-acentos";
  services.xserver = {
    layout = "us";
    xkbVariant = "intl";
  };

}
