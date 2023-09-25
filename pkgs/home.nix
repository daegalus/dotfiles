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
    #dotnet-runtime
    #dotnet-sdk_7
    #dotnet-sdk_8

    # audible
    audible-cli
    aaxtomp3
  ];
}
