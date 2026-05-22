{ config, pkgs, ... }:

{
  
  # Basic home configurations
  home = {
    username = "kumoren";
    homeDirectory = "/home/kumoren";
    stateVersion = "25.11";
    pointerCursor = {
      gtk.enable = true;
      x11.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
  };
  
  # Importing all the modules for the applications
  imports = [
    home_modules/bash.nix
    home_modules/wezterm.nix
    home_modules/kitty.nix
    home_modules/git.nix
    home_modules/nixvim/nixvim.nix
    home_modules/yazi.nix
    home_modules/desktop/hyprland.nix
    home_modules/desktop/hyprpaper.nix
    home_modules/desktop/fuzzel.nix
    home_modules/desktop/waybar.nix
    home_modules/music/music.nix
  ];
  
  # Getting gtk to set the Bibata-Modern-Ice cursor
  gtk = {
    enable = true;
    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
  };

  # Getting ther system to open thunar as the default file manager
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "inode/directory" = [ "thunar.desktop" ];
    };
  };
}
