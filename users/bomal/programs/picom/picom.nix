{ pkgs, ... }:

{
  services.picom = {
    enable = true;
    backend = "glx";
    fade = true;
    fadeDelta = 2;
  };

}
