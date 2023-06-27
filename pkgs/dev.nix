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
    rustup
    deno

    # Containers
    docker
    podman

    # Tools
    golangci-lint
    protobuf
    terraform
    tflint
    tealdeer
    pkg-config

    # Wails
    gcc
    gtk3
    webkitgtk
    nsis
    upx
  ];
}