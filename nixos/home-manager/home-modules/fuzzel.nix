{ pkgs, config, ... }:
{
  programs.fuzzel = {
    enable = true;
    
    settings = {

      main = {

        dpi-aware = "no";
        font = "InconsolataLGC Nerd Font:size=16";
        prompt = "";
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

        # dark grey
        background = "2e2f2fff";
        # Pure light blue
        text = "30d8bcff";
        # Light red
        match = "ff326aff";
        # Light white
        selection = "d4d4d5ff";
        selection-text = "2e2f2fff";
        selection-match = "30d8bcff";
        border = "ff326aff";
        prompt = "30d8bcff";

      };

      border = {

        width = 2;
        radius = 2;

      };
    };
  };
}
