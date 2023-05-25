{ config, pkgs, ... }:

{
  home.homeDirectory = "/home/yulian";

  # Set git config 
  programs.git = {
    userEmail = "yulian@unity3d.com";
  };

  home.sessionVariables = {
    # gcloud
    USE_GKE_GCLOUD_AUTH_PLUGIN="true";
    
    # wasmer
    WASMER_DIR="/home/yulian/.wasmer";
  };
}
