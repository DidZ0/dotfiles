##############################
## USER PACKAGES / DOTFILES ##
##############################

{ config, pkgs, ... }: {
  
  programs.home-manager.enable = true;
  home.username = "bomal";
  home.homeDirectory = "/home/bomal";

  # SIMPLE PACKAGES
  home.packages = with pkgs; [
    neovim
    htop
    neofetch
  ];


  # VERSION
  home.stateVersion = "22.11";
}
