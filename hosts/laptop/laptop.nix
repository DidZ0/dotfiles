{ config, lib, pkgs, ... }:

{

  # TODO: Add hardware config
  
  networking.hostName = "nixlap"

  environment.systemPackages = with pkgs; [
    # TODO: Add battery utilities (tlp, powertop, acpi, upower)
  ];

}
