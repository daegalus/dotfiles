{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    syncthing
    squashfsTools

    # Static Site
    hugo
  ];
}
