{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    syncthing
    
    # Wails
    gcc
    gtk3
    webkitgtk
    nsis
    upx

    # Static Site
    hugo
  ];
}
