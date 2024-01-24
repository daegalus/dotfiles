{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    syncthing
    squashfsTools
    
    # Wails
    gcc
    gtk3
    webkitgtk
    nsis
    upx

    # Static Site
    hugo

    # dotnet
    dotnet-sdk

    # audible
    audible-cli
    aaxtomp3
  ];
}
