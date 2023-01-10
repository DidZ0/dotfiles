{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Yan Imensar";
    userEmail = "sub@yan-imensar.fr";
    aliases = {
      st = "status";
      a = "add --all";
    };
  };

}
