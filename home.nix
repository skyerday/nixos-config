{ config, pkgs, ... }:

{
  home.username = "skyer";
  home.homeDirectory = "/home/skyer";

  # 直接将当前文件夹的配置文件，链接到 Home 目录下的指定位置
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # 递归将某个文件夹中的文件，链接到 Home 目录下的指定位置
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # 递归整个文件夹
  #   executable = true;  # 将其中所有文件添加「执行」权限
  # };

  # 直接以 text 的方式，在 nix 配置文件中硬编码文件内容
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  home.packages = with pkgs; [
    neofetch
    zip
    xz
    unzip
    p7zip
    ripgrep
    jq
    fd
    fzf
    lazygit
    jq
    go
    rustup
    python3
    bottom
    lm_sensors
    nodejs_20
  ];

  programs.git = {
    enable = true;
    userName = "Skyer";
    userEmail = "skyer.tw@gmail.com";
  };

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
