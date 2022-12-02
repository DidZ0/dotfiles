{ config, pkgs, ... }:

{

  # USERS
  users.users.bomal = {
    isNormalUser = true;
    description = "Yan Imensar";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # SERVICES 
  services.openssh.enable = true;

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

  # FLAKES 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "22.05";

}
