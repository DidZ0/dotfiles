{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fuzzel 
  ];

  #home.file.".config/fuzzel/fuzzel.ini".source = ./fuzzel.ini;
}
