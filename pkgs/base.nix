{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    # Fonts
    (nerdfonts.override { fonts = [ "Hasklig" "CascadiaCode" ]; })

    # Packages
    atuin
    age
    bat
    delta
    duf
    exa
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
    wireguard-tools
    xh
  ];
}
