###################################
## SYSTEM-WIDE CONFIG / SERVICES ##
###################################

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
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.defaultSession = "hyprland";
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.libinput.enable = true;

  # PIPEWIRE
  security.rtkit.enable = true;
  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # BLUETOOTH
  hardware.bluetooth.enable = true;

  # SSH
  services.openssh.enable = true;

  # VPN / ZEROTIER
  services.mullvad-vpn.enable = true;
  services.tailscale.enable = true;

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
