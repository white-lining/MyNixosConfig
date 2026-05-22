{ pkgs, ... }: {
  
  programs.waybar = {
    
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        output = "HDMI-A-1";
        position = "top";
        height = 32;

        # margin-top = 5;
        # margin-left = 6;
        # margin-right = 6;

        modules-left = ["custom/icon"];
        modules-center = ["hyprland/workspaces" "clock" ];
        # modules-right = ["clock"];

        "hyprland/workspaces" = {
          all-outputs = true;
          format = "{icon}";
          format-icons = {
            active = "";
            default = "";
            empty = "";
          };
          persistent-workspaces = {
            "*" = [ 1 2 3 4 5 ];
          };
        };

        "custom/icon" = {
          format = " 󱌴 {}";
          on-click = "hyprctl dispatch exit";
        };

        "clock" = {
          timezone = "America/Argentina/Cordoba";
          format = " {:%H/%M %Y %B-%d} ";
        };
      };
    };

    style = ''
      * {
        font-family: "Inconsolata LGC Nerd Font";
        font-size: 18px;
        font-weight: bold;
      }

      window#waybar {
        background-color: #e9f0ef;
        border-radius: 3px;
        border-top: 3px solid #f7d2fa;
      }

      #workspaces {
        border-top: 3px solid #f7d2fa;
        background-color: #e9f0ef;
        color: #2a2e2e;
        border-radius: 9px;
      }

      #workspaces button.active {
        color: #d9faf8;
      }

      #custom-icon {
        border-top: 3px solid #f7d2fa;
        background-color: #e9f0ef;
        color: #2a2e2e;
        border-radius: 4px;
      }

      #clock {
        background-color: #e9f0ef;
        border-top: 3px solid #f7d2fa;
        color: #2a2e2e;
        border-radius: 4px;
      }
    '';
  };

}
