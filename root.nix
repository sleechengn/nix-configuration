{ config, pkgs, ... }:

{
  # 注意修改这里的用户名与用户目录
  home.username = "root";
  home.homeDirectory = "/root";
  programs.tmux = {
    enable = true;
    # 直接在此处写入原本写在 .tmux.conf 里的内容
    extraConfig = ''
      set -g mouse on
      unbind -n MouseDown3Pane
      set -g default-command fish
    '';
  };

  home.stateVersion = "26.05";
}
