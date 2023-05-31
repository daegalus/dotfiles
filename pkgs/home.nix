{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    # Wails
    gcc
    gtk3
    webkitgtk
    nsis
    upx
  ];
}