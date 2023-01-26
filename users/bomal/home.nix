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
    pulsemixer
    neovim
    htop
    neofetch
    chromium
    vscode
    networkmanagerapplet
    waybar
    signal-desktop
    wofi
    logseq
    nodejs
  ];


  nixpkgs.overlays = [
    (self: super: {
      waybar = super.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      });
    })
  ];

  programs.waybar.enable = true;

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
