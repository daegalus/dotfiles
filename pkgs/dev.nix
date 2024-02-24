{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    # Languages
    crystal
    dart
    go_1_22
    haxe
    hashlink # VM for Haxe
    nim
    rustup
    deno
    zig
    zls

    # Containers
    podman
    podman-compose
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
    ldns

    # Libs
    gcc
    devbox
  ];
}
