{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
<<<<<<< Updated upstream
    terraform
    tflint
=======
	topgrade
	terraform
	tflint
>>>>>>> Stashed changes
  ];
}
