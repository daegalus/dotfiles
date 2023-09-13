{ config, pkgs, ... }:

{
  home.homeDirectory = "/var/home/yulian";
  services.syncthing.enable = true;
  services.syncthing.tray.enable = true;
}
