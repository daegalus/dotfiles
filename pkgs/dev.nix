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
    buildah

    # Tools
    golangci-lint
    protobuf
    terraform
    tflint
    tealdeer
    pkg-config
    mage
    crystalline
    devbox

    # Libs
  ];
}
