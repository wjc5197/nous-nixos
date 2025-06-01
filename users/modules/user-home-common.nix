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
      btop
      du-dust
      fastfetch
      fd
      gdb
      google-chrome
      mupdf
      nixfmt-rfc-style
      p7zip
      ripgrep
      tree
      # wget
      unzip
      volume
      xdg-utils
    ];
    sessionVariables = {
      EDITOR = "nvim";
      GTK_IM_MODULE = "fcitx";
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
    feh = {
      enable = true;
    };
    git = {
      delta = {
        enable = true;
      };
      enable = true;
    };
    mpv = {
      enable = true;
    };
    neovim = {
      enable = true;
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
