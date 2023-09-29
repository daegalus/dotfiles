{ config, pkgs, ... }:

{
  home.homeDirectory = "/home/yulian";

  # Set git config 
  programs.git = {
    userEmail = "yulian@unity3d.com";
  };

  programs.zsh = {
    initExtra = "source ~/.nix-profile/etc/profile.d/nix.sh" + "\n" +
      "source ~/.nix-profile/etc/profile.d/nix-daemon.sh"
  }

  home.sessionVariables = {
    # gcloud
    USE_GKE_GCLOUD_AUTH_PLUGIN="true";
    
    # wasmer
    WASMER_DIR="/home/yulian/.wasmer";
  };
}
