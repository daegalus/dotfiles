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
    jq
    micro
    pandoc
    rclone
    ripgrep
    tmux
    wireguard-tools
    xh
  ];
}
