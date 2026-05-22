{ pkgs, ... }: {
  
  programs.fuzzel = {
    
    enable = true;

    settings = {
      
      main = {
        dpi-aware = "no";
        font = "InconsolataLGC Nerd Font Mono:size=15";
        prompt = "->";
        lines = 10;
        width = 35;
        show-actions = "yes";
        icons-enabled = "yes";
        fields = "filename,name,keywords,comment,categories,generic";
        layer = "overlay";
        exit-on-keyboard-focus-loss = "yes";
        horizontal-pad = 20;
        vertical-pad = 15;
      };

      colors = {
        background = "232729ff";
        text = "d0d6d6ff";
        match = "FAF9CAff";
        selection = "fffbc9ff";
        selection-text = "232729ff";
        selection-match = "d0d6d6ff";
        border = "b6e5e8ff";
        prompt = "d0d6d6ff";
      };

      border = {
        width = 2;
        radius = 2;
      };
    };
  };
}
