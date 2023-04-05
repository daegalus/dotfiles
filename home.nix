{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "yulian";
  home.homeDirectory = "/var/home/yulian";
  home.stateVersion = "22.11"; # Please read the comment before changing.

  # Set git config 
  programs.git = {
    enable = true;
    userName  = "Yulian Kuncheff";
    userEmail = "yulian@kuncheff.com";
    extraConfig = {
      core = {
        pager = "delta";
        editor = "micro";
        excludesFile = "${config.home.homeDirectory}/.gitignore";
      };
      init = {
        defaultBranch = "main";
        required = true;
      };
      pull = {
        rebase = true;
      };
      rebase = {
        autostash = true;
      };
      push = {
        autoSetupRemote = true;
      };
      delta = {
        features = "side-by-side line-numbers decorations";
        whitespace-error-style = "22 reverse";
        side-by-side = true;
        plus-style = "syntax #012800";
        minus-style = "syntax #340001";
        syntax-theme = "gruvbox-dark";
        decorations = {
          commit-decoration-style = "yellow box ul";
          file-style = "yellow ul";
          file-decoration-style = "yellow ul";
        };
      };
      interactive = {
        diffFilter = "delta --color-only";
      };
      url = {
        "git@github.com:" = {
          insteadOf = "https://github.com/";
        };
      };
    };
  };

  home.packages = with pkgs; [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
    bat
    fd
    gh
    ripgrep
    go
    age
    delta
    fzf
    dart
    nim
    haxe
    crystal
    k9s
    hugo
    duf
    golangci-lint
    rclone
    julia
    micro
    winetricks
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
    ".gitconfig".source = dotfiles/gitconfig;
    ".zshrc".source = dotfiles/zshrc;
    ".zsh".source = dotfiles/zsh;
    ".p10k.zsh".source = dotfiles/zsh/p10k.zsh;
  };

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/yulian/etc/profile.d/hm-session-vars.sh
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}