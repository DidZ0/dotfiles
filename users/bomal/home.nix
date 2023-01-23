##############################
## USER PACKAGES / DOTFILES ##
##############################

{ config, pkgs, ... }: {
  
  programs.home-manager.enable = true;
  home.username = "bomal";
  home.homeDirectory = "/home/bomal";

  # SIMPLE PACKAGES
  home.packages = with pkgs; [
    hyprpaper
    mpv
    pulsemixer
    neovim
    htop
    neofetch
    chromium
    vscode
    networkmanagerapplet
    waybar
    signal-desktop
    rofi
    logseq
  ];

  # CUSTOM PACKAGES / DOTFILES
  imports = [
    ./programs/git/git.nix
    ./programs/i3/i3.nix
    ./programs/picom/picom.nix
    ./programs/polybar/polybar.nix
    ./programs/alacritty/alacritty.nix
    ./programs/fuzzel/fuzzel.nix
  ];

  # VERSION
  home.stateVersion = "22.11";
}
