{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    # Fonts
    (nerdfonts.override { fonts = [ "Hasklig" "CascadiaCode" "Monaspace" ]; })

    # Packages
    atuin
    age
    bat
    bottom
    delta
    duf
    eza
    fd
    fzf
    gh
    jq
    micro
    pandoc
    rclone
    ripgrep
    starship
    tmux
    topgrade
    wireguard-tools
    xh
  ];
}
