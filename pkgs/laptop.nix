{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    squashfsTools

    # Static Site
    hugo
  ];
}
