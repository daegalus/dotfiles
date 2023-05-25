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

    # Containers
    docker
    podman

    # Tools
    golangci-lint
    protobuf
    terraform
    tflint
    tealdeer
  ];
}