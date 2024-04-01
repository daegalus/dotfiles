{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    kubernetes-helm
    helmsman
    k9s
    kdash
    kind
    kubectl
    kubectx
    skaffold
    kompose
  ];
}
