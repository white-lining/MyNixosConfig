{ pkgs, pkgs-unstable, config, lib, ... }:
{
  home = {
    username = "kumoren";
    homeDirectory = "/home/kumoren";
    stateVersion = "25.11";

    services.swww.enable = true;
  };

  imports = [
    ./home-modules/home_packages.nix #
    ./home-modules/hyprland.nix #
    ./home-modules/nixvim/nixvim.nix
    ./home-modules/hyprlock.nix #
    ./home-modules/hypridle.nix #
    ./home-manager/wlogout.nix
    ./home-modules/terminal/alacritty.nix #
    ./home-modules/terminal/wezterm.nix #
    ./home-modules/terminal/tmux.nix
    ./home-modules/bash.nix #
    ./home-modules/git.nix #
    ./home-modules/fuzzel.nix #
    ./home-modules/waybar.nix
    ./home-modules/yazi.nix #
    ./home-modules/music.nix #
  ];
}
