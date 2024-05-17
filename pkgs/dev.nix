{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    # Languages
    crystal
    dart
    go
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
    tealdeer
    pkg-config
    mage
    crystalline
    devbox
    ldns
    flatpak-builder
    hugo
    squashfsTools
    git-filter-repo
    gh
    xxd
    vim-full
    difftastic
    poetry
	wasmer
	
    # Libs
    gcc
    devbox
  ];
}
