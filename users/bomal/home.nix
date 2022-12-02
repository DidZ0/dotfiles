{ pkgs, ... }: {
  programs.home-manager.enable = true;
  home.username = "bomal";
  home.homeDirectory = "/home/bomal";

  home.packages = with pkgs; [
    neovim
    htop
    neofetch
  ];

  programs.git = {
    enable = true;
    userName = "Yan Imensar";
    userEmail = "sub@yan-imensar.fr";
    aliases = {
      st = "status";
    };
  };

  home.stateVersion = "22.11";
}
