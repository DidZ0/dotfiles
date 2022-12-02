{ pkgs, ... }: {
  programs.home-manager.enable = true;
  home.username = "bomal";
  home.homeDirectory = "/home/bomal";

  home.packages = with pkgs; [
    neovim
    htop
    neofetch
  ];

  imports = [
    ./programs/git.nix
  ];

  home.stateVersion = "22.11";
}
