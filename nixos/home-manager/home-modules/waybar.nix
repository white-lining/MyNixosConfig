{ pkgs, config, ... }:
{
  programs.waybar = {

    enable = true;

    settings = {
      mainBar = {

        layer = "top";
        output = "HDMI-A-1";
        position = "top";
        height = 32;

        margin-top = 5;
        margin-left = 6;
        margin-right = 6;

        modules-left = [ "hyprland/workspaces" ];
        modules-right = [ "clock" ];

        "hyprland/workspaces" = {
          all-outputs = true;
          format = "{icon}";
          format-icons = {
            active = "";
            default = "";
            empty = "";
          };
          persistent-workspaces = {
            "*" = [ 1 2 3 4 5 6 ];
          };
        };

        "clock" = {
          timezone = "America/Argentina/Cordoba/";
          format = " {:%H-%M %Y %B/%dddd} ";
        };

      };

    };

    style = ''
      * {
        font-family: "InconsolataLGC Nerd Font";
        font-size: 18px;
        font-weight: bold;
      }

      window#waybar {
        background-color: #cbcee0;
        border-radius: 3px;
        border-top: 3px solid #ff326a;
      }

      #workspaces {
        border-top: 3px solid #ff326a;
        background-color: #353f4f;
        color: #cbcee0;
        border-radius: 9px;
      }

      workspaces button.active {
        color: #30d8bc;
      }

      #clock {
        background-color: #353f4f;
        border-top: #ff326a;
        color: #cbcee0;
        border-radius: 4px;
      }
    '';
  };
}
