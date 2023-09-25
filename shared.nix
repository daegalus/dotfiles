{ config, pkgs, lib, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "yulian";
  home.stateVersion = "22.11";


  programs.home-manager.enable = true;
  programs.eza = {
    enable = true;
    enableAliases = true;
    git = true;
    extraOptions = [
      "-ZF"
      "--git"
      "-s=name"
      "--group-directories-first"
    ];
  };

  programs.atuin = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      style = "compact";
      inline_height = 10;
      show_preview = true;
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
      format = "$os $directory$fill$time$all";
      directory.fish_style_pwd_dir_length = 3;
      hostname.format = "[$ssh_symbol$hostname]($style) ";
      time.disabled = false;
      os = {
      	disabled = false;
      	symbols = {
      		Alpaquita = " ";
      		Alpine = " ";
      		Amazon = " ";
      		Android = " ";
      		Arch = " ";
      		Artix = " ";
      		CentOS = " ";
      		Debian = " ";
      		DragonFly = " ";
      		Emscripten = " ";
      		EndeavourOS = " ";
      		Fedora = " ";
      		FreeBSD = " ";
      		Garuda = "󰛓 ";
      		Gentoo = " ";
      		HardenedBSD = "󰞌 ";
      		Illumos = "󰈸 ";
      		Linux = " ";
      		Mabox = " ";
      		Macos = " ";
      		Manjaro = " ";
      		Mariner = " ";
      		MidnightBSD = " ";
      		Mint = " ";
      		NetBSD = " ";
      		NixOS = " ";
      		OpenBSD = "󰈺 ";
      		openSUSE = " ";
      		OracleLinux = "󰌷 ";
      		Pop = " ";
      		Raspbian = " ";
      		Redhat = " ";
      		RedHatEnterprise = " ";
      		Redox = "󰀘 ";
      		Solus = "󰠳 ";
      		SUSE = " ";
      		Ubuntu = " ";
      		Unknown = " ";
      		Windows = "󰍲 ";
      	};
      };
      aws.symbol = "  ";
      buf.symbol = " ";
      c.symbol = " ";
      conda.symbol = " ";
      dart.symbol = " ";
      directory.read_only = " 󰌾";
      docker_context.symbol = " ";
      elixir.symbol = " ";
      elm.symbol = " ";
      fossil_branch.symbol = " ";
      gcloud.symbol = "󱇶 ";
      git_branch.symbol = " ";
      golang.symbol = " ";
      guix_shell.symbol = " ";
      haskell.symbol = " ";
      haxe.symbol = " ";
      hg_branch.symbol = " ";
      hostname.ssh_symbol = " ";
      java.symbol = " ";
      julia.symbol = " ";
      lua.symbol = " ";
      memory_usage.symbol = "󰍛 ";
      meson.symbol = "󰔷 ";
      nim.symbol = "󰆥 ";
      nix_shell.symbol = " ";
      nodejs.symbol = " ";
      package.symbol = "󰏗 ";
      pijul_channel.symbol = " ";
      python.symbol = " ";
      rlang.symbol = "󰟔 ";
      ruby.symbol = " ";
      rust.symbol = " ";
      scala.symbol = " ";
    };
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    dirHashes = {
      docs = "$HOME/Documents";
      workspace = "$HOME/workspace";
      dl = "$HOME/Downloads";
    };
    history = {
      extended = true;
      size = 20000;
      save = 10000;
    };
    zplug = {
      enable = true;
      plugins = [
        { name = "johannchangpro/zsh-interactive-cd"; }
      ];
    };
    initExtra = "source ~/.zsh/apps/easy_colors.zsh" + "\n" +
      "source ~/.zsh/apps/fzf.zsh" + "\n" +
      "source ~/.zsh/apps/nodejs.zsh" + "\n" +
      "source ~/.zsh/apps/copilot-cli.zsh" + "\n" +
      "source ~/.zsh/apps/zicd.zsh" + "\n" +
      "source ~/.zsh/apps/wasmer.zsh" + "\n" +
      "for file in ~/.zsh/scripts/*; do" + "\n" +
      "  source $file" + "\n" +
      "done";
    shellAliases = {
      # Docker
      dpsc = "docker rm \$(docker ps -a -q)";
      dimgc = "docker rmi \$(docker images | grep \"^<none>\" | awk '{print $3}')";
      dps = "docker ps";
      dkr = "docker";
      # Podman
      ppsc = "podman rm \$(podman ps -a -q)";
      pimgc = "podman rmi \$(podman images | grep \"^<none>\" | awk '{print $3}')";
      pps = "podman ps";
      pm = "podman";
      # Files
      freq = "cut -f1 -d\" \" ~/.zhist | sort | uniq -c | sort -nr | head -n 30";
      lr = "ls -R | grep \":$\" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\''";
      ll = lib.mkForce "ls -alh";
      # Git
      gb = "git for-each-ref --sort=-committerdate refs/heads/";
      gg = "git status -s";
      gl = "git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit";
      glh = "gl | head";
      gls = "gl --since '1 day ago' --author yulian@kuncheff.com";
      glsw = "gl -- since '1 day ago' --author yulian@unity3d.com";
      gr = "git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'";
      lg = "git log --graph --full-history --all --color --pretty=format:\"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s\"";
      # Linux
      open = "xdg-open";
      # Other
      rake = "noglob rake";
      bundle = "noglob bundle";
      curl = "noglob curl";
    };
  };
  
  # foot
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "CaskaydiaCove Nerd Font:size=8";
      };
    };
  };

  # Set git config 
  programs.git = {
    enable = true;
    userName  = "Yulian Kuncheff";
    userEmail = lib.mkDefault "yulian@kuncheff.com";
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

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    defaultCommand = "fd --type f --hidden --follow --exclude .git";
    fileWidgetCommand = "fd --type f --hidden --follow --exclude .git";
  };

  programs.go = {
    enable = true;
  };

  home.file = {
    #".zshrc".source = dotfiles/zshrc;
    ".zsh".source = dotfiles/zsh;
    #".npmrc".source = dotfiles/npmrc;
  };

  home.sessionVariables = {
    USING_NIX="true";
    TERM = "xterm-256color";
    MICRO_TRUECOLOR = "true";
    EDITOR = "micro";
    CLICOLORS = "1";
    LSOPTIONS = "--color=always";
    LC_ALL = "en_US.UTF-8";

    # golang
    WORKSPACE_ROOT="${config.home.homeDirectory}/workspace/code";
    GOPROXY="https://proxy.golang.org,direct";
    GOPATH="${config.home.homeDirectory}/.go";

    # other
    GLAMOUR_STYLE="dark";

    # fly.io
    FLYCTL_INSTALL="${config.home.homeDirectory}/.fly";

    PATH="$FLYCTL_INSTALL/bin:" +
        "${config.home.homeDirectory}/.bin:" +
        "${config.home.homeDirectory}/.bin/vale:" +
        "${config.home.homeDirectory}/.cargo/bin:" +
        "${config.home.homeDirectory}/.local/bin:" +
        "${config.home.homeDirectory}/.go/bin:" +
        "${config.home.homeDirectory}/.poetry/bin:" +
        "${config.home.homeDirectory}/.pyenv/bin:" +
        "${config.home.homeDirectory}/.npm-packages/bin:" +
        ":$PATH";
  };

  nixpkgs.config.allowUnfree = true;
  fonts.fontconfig.enable = true;
}
