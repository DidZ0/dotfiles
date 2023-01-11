##############################
## USER PACKAGES / DOTFILES ##
##############################

{ config, pkgs, ... }: {
  
  programs.home-manager.enable = true;
  home.username = "bomal";
  home.homeDirectory = "/home/bomal";

  # SIMPLE PACKAGES
  home.packages = with pkgs; [
    feh
    vlc
    pulsemixer
    neovim
    htop
    neofetch
    chromium
    vscode
    rofi
    alacritty
    networkmanagerapplet
  ];

  # CUSTOM PACKAGES / DOTFILES
  imports = [
    ./programs/git/git.nix
    ./programs/i3/i3.nix
    ./programs/picom/picom.nix
    ./programs/polybar/polybar.nix
  ];

  # VERSION
  home.stateVersion = "22.11";
}
