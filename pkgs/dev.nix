{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    # Languages
    crystal
    dart
    go
    haxe
    hashlink # VM for Haxe
    julia
    nim
    rustup
    deno
    zig
    zls

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
    mage

    # Wails
    gcc
    gtk3
    webkitgtk
    nsis
    upx
  ];
}
