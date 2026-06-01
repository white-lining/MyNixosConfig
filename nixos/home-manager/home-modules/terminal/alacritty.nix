{ pkgs, pkgs-unstable, config, ... }:
{
  programs.alacritty = {
    
    enable = true;

    settings = {

      font = {
        size = 16;
        normal = {
          family = "InconsolataLGC Nerd Font";
          style = "Regular";
        };
      };

      colors = {

        primary = {
          background = "#2e2f2f";
          foreground = "#d4d4d5";
        };

      };
    };
  };
}
