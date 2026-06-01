{ pkgs, pkgs-unstable, config, lib, ... }:
{
  home = {
    packages = [
      pkgs.cbonsai 
      pkgs.pipes 
      pkgs.clock-rs
      pkgs.mako 
      pkgs.onlyoffice-desktopeditors 
      pkgs.fuzzel 
      pkgs.waybar 
      pkgs.fastfetch 
      pkgs.lavat 
      pkgs.btop 
      pkgs.alsa-utils 
      pkgs.fzf 
      pkgs.zenity 
      pkgs.wlogout 
      pkgs.hyprlock 
      pkgs.zoxide 
      pkgs.tmux 
      pkgs.mpd 
      pkgs.ncmpcpp 
      pkgs.mpc 
      pkgs.yt-dlp 
      pkgs.hyprpicker
      pkgs.hypridle
    ];
  };
}
