{ config, pkgs, ... }:

{
  # 注意修改这里的用户名与用户目录
  home.username = "sa";
  home.homeDirectory = "/home/sa";
  home.packages = with pkgs; [ gnomeExtensions.dash-to-dock ];
  dconf.settings = {
    "org/gnome/shell".enabled-extensions = [ "dash-to-dock@micxgx.gmail.com" "ding@rastersoft.com" ];
    "org/gnome/shell".disable-user-extensions = false;
    "org/gnome/shell/extensions/dash-to-dock" = {
      dock-position = "BOTTOM";
      extend-height = false;
    };
  };

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
