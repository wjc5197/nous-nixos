{
  config,
  pkgs,
  ...
}:
{
  # mu init -m "mail"
  accounts.email.maildirBasePath = "${config.home.homeDirectory}/mail";
  home = {
    packages = with pkgs; [
      brightnessctl
      du-dust
      gdb
      google-chrome
      nixfmt-rfc-style
      p7zip
      # wget
      unrar
      volume
      xdg-utils
    ];
    sessionVariables = {
      EDITOR = "nvim";
      GTK_IM_MODULE = "fcitx";
      NIXOS_OZONE_WL = "1";
      QT_IM_MODULE = "fcitx";
      XMODIFIERS = "@im=fcitx";
    };
  };
  i18n = {
    inputMethod = {
      enable = true;
      fcitx5 = {
        addons = with pkgs; [
          (fcitx5-rime.override {
            rimeDataPkgs = with pkgs; [
              rime-data
              rime-ice
            ];
          })
          fcitx5-chinese-addons
          fcitx5-configtool
          fcitx5-gtk
          fcitx5-mozc
          fcitx5-with-addons
          kdePackages.fcitx5-qt
        ];
      };
      type = "fcitx5";
    };
  };
  programs = {
    bat = {
      enable = true;
    };
    btop = {
      enable = true;
    };
    eza = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
    fastfetch = {
      enable = true;
    };
    fd = {
      enable = true;
    };
    feh = {
      enable = true;
    };
    fzf = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
    git = {
      delta = {
        enable = true;
      };
      enable = true;
    };
    lazygit = {
      enable = true;
    };
    mpv = {
      enable = true;
    };
    neovim = {
      enable = true;
    };
    ripgrep = {
      enable = true;
    };
    yazi = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
    zathura = {
      enable = true;
    };
    zoxide = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
  };
  xdg = {
    enable = true;
    # portal = {
    #   enable = true;
    # };
    userDirs = {
      desktop = "${config.home.homeDirectory}/desktop";
      documents = "${config.home.homeDirectory}/documents";
      download = "${config.home.homeDirectory}/downloads";
      enable = true;
      music = "${config.home.homeDirectory}/music";
      pictures = "${config.home.homeDirectory}/pictures";
      publicShare = "${config.home.homeDirectory}/public";
      templates = "${config.home.homeDirectory}/templates";
      videos = "${config.home.homeDirectory}/videos";
    };
  };
}
