{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    # Languages
    crystal
    dart
    go
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
    flatpak-builder

    # Libs
    gcc
    devbox
  ];
}
