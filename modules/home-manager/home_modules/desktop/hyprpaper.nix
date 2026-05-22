{ pkgs, ... }: {
  
  services.hyprpaper = {
    enable = true;

    settings = {
      preload = [
        "/home/kumoren/images/blackNWhiteCinder.png"
      ];
      wallpaper = [
        ",/home/kumoren/images/blackNWhiteCinder.png"
      ];
    };
  };

}
