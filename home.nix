{ config, pkgs, ... }:

{
  # 注意修改这里的用户名与用户目录
  home.username = "sa";
  home.homeDirectory = "/home/sa";
  home.packages = with pkgs; [ gnomeExtensions.dash-to-dock ];
  dconf.settings = {
    "org/gnome/shell".enabled-extensions = [ "dash-to-dock" ];
    "org/gnome/shell/extensions/dash-to-dock" = {
      dock-position = "BOTTOM";
      extend-height = false;
    };
  };
  home.stateVersion = "26.05";
}
