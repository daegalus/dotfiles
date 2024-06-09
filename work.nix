{ config, pkgs, ... }:

{
  home.homeDirectory = "/home/yulian";

  # Set git config 
  programs.git = {
    userEmail = "yulian@unity3d.com";
    signing.key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFgf6WXZLqBZ0pyIKEnzhKDXVB606z60jAid1FUylBqI";
  };

  programs.zsh = {
    initExtra = "source ~/.nix-profile/etc/profile.d/nix.sh" + "\n" +
      "source ~/.nix-profile/etc/profile.d/nix-daemon.sh";
  };

  home.sessionVariables = {
    # gcloud
    USE_GKE_GCLOUD_AUTH_PLUGIN="true";
    
    # wasmer
    WASMER_DIR="/home/yulian/.wasmer";
  };
}
