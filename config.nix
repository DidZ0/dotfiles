########################
## SYSTEM-WIDE CONFIG ##
########################

{ config, pkgs, ... }:
{
  # USERS
  users.users.bomal = {
    isNormalUser = true;
    description = "Yan Imensar";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # XSERVER
  services.xserver.enable = true;
  services.xserver.desktopManager.xterm.enable = false;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.displayManager.defaultSession = "none+i3";
  services.xserver.libinput.enable = true;

  # PIPEWIRE
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # NFS
  services = {
    rpcbind.enable = true;
    nfs.server.enable = true;
  };
  fileSystems."/mnt/truenas" = {
    device = "192.168.193.103:/mnt/pool/storage/bomal";
    fsType = "nfs";
  };

  # BLUETOOTH
  hardware.bluetooth.enable = true;


  # TIMEZONE
  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "en_US.utf8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "fr_FR.utf8";
    LC_IDENTIFICATION = "fr_FR.utf8";
    LC_MEASUREMENT = "fr_FR.utf8";
    LC_MONETARY = "fr_FR.utf8";
    LC_NAME = "fr_FR.utf8";
    LC_NUMERIC = "fr_FR.utf8";
    LC_PAPER = "fr_FR.utf8";
    LC_TELEPHONE = "fr_FR.utf8";
    LC_TIME = "fr_FR.utf8";
  };

  # EXTRA 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  # VERSION
  system.stateVersion = "22.05";
}
