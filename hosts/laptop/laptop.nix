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

  networking.hostName = "nixlap";
  networking.networkmanager.enable = true;
	
  console.keyMap = "us-acentos";
  services.xserver = {
    layout = "us";
    xkbVariant = "colemak";
  };


  # LAPTOP UTILITIES
  programs.light.enable = true;
  powerManagement.powertop.enable = true;
  hardware.opengl.enable = true;
  hardware.opengl.extraPackages = with pkgs; [
    intel-compute-runtime
  ];
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;

  environment.systemPackages = with pkgs; [
    tlp powertop acpi upower
  ];

}

