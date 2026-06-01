{ pkgs, pkgs-unstable, config, ... }:
{
  environment.systemPackages = [
    pkgs.wget
    pkgs.vim
    pkgs.udiskie
    pkgs.killall
    pkgs.git
    pkgs.alacritty
    pkgs.wezterm
    pkgs.ripgrep
    pkgs.nano
    pkgs.neovim 
    pkgs.xdg-desktop-portal
    pkgs.xdg-desktop-portal-gtk
    pkgs.xdg-desktop-portal-hyprland
    pkgs.tree
    pkgs.yazi
    pkgs.power-profiles-daemon
    pkgs.eza
    pkgs.xfce.thunar
    pkgs.inxi
    pkgs.which
    pkgs.brightnessctl
  ];
}
