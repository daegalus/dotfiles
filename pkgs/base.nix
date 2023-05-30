{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    # Fonts
    (nerdfonts.override { fonts = [ "Hasklig" "CascadiaCode" ]; })

    # Packages
    age
    bat
    delta
    duf
    fd
    fzf
    gh
    micro
    rclone
    ripgrep
    tmux
  ];
}