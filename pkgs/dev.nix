{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    # Languages
    crystal
    dart
    go
    haxe
    julia
    nim
    nodejs
    rustup

    # Containers
    docker
    podman

    # Tools
    golangci-lint
    protobuf
    terraform
    tflint
    tealdeer

    # Wails
    gcc
    gtk3
    webkitgtk
    nsis
    upx
  ];
}