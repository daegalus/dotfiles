{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
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
    rustup
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
    ".zshrc".source = dotfiles/zshrc;
    ".zsh".source = dotfiles/zsh;
    ".p10k.zsh".source = dotfiles/zsh/p10k.zsh;
    ".powerlevel10k".source = pkgs.fetchFromGitHub {
        owner = "romkatv";
        repo = "powerlevel10k";
        rev = "v1.17.0";
        hash = "sha256-fgrwbWj6CcPoZ6GbCZ47HRUg8ZSJWOsa7aipEqYuE0Q=";
      };
    ".zsh-completions".source = pkgs.fetchFromGitHub {
        owner = "zsh-users";
        repo = "zsh-completions";
        rev = "0.34.0";
        hash = "sha256-qSobM4PRXjfsvoXY6ENqJGI9NEAaFFzlij6MPeTfT0o=";
    };
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
    USING_NIX="true";
    TERM = "xterm-256color";
    MICRO_TRUECOLOR = "true";
    EDITOR = "micro";
    CLICOLORS = "1";
    LSOPTIONS = "--color=always";
    LC_ALL = "en_US.UTF-8";

    # eget
    EGET_BIN="~/.bin";

    # fly.io
    FLYCTL_INSTALL="/home/yulian/.fly";

    # fzf
    FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git";
    FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND";

    # gcloud
    USE_GKE_GCLOUD_AUTH_PLUGIN="true";

    # golang
    WORKSPACE_ROOT="${config.home.homeDirectory}/workspace/code";
    GOPROXY="https://proxy.golang.org,direct";

    # python
    # wasmer
    WASMER_DIR="/home/yulian/.wasmer";

    # other
    GLAMOUR_STYLE="dark";

    PATH="$FLYCTL_INSTALL/bin:" +
        "${config.home.homeDirectory}/.bin:" +
        "${config.home.homeDirectory}/.cargo/bin:" +
        "${config.home.homeDirectory}/.local/bin:" +
        "${config.home.homeDirectory}/.go/bin:" +
        "${config.home.homeDirectory}/.poetry/bin:" +
        "${config.home.homeDirectory}/.pyenv/bin:" +
        ":$PATH";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
