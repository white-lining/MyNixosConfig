{ pkgs, config, ... }:
{
  programs.hyprlock = {
    enable = true;

    settings = {

      general = {
        hide_cursor = false;
      }; 

      animations = {
        enabled = true;

        fade_in = {
          duration = 300;
          bezier = "easeOutQuint";
        };

        fade_out = {
          duration = 300;
          bezier = "easeOutQuint";
        };
      };

      background = {
        monitor = "HDMI-A-1";
        path = "../../../resources/lonelytree.jpg";
        blur_passes = 3;
        blur_size = 5;
      };

      input_field = {

        monitor = "HDMI-A-1";
        size = "200, 50";
        position = "0, -20";
        dots_center = true;
        fade_on_empty = false;
        outline_thickness = 3;

        # Color of the inner box
        inner_color = "rgb(212, 212, 213)";
        # Color of the font
        font_color = "rgb(46, 46, 47)";
        # Color of the border
        outer_color = "rgb(255, 50, 106)";
        # Color for when checking the authorization
        check_color = "rgb(48, 184, 220)";
        # Color for when failing the authorization
        fail_color = "rgb(235, 215, 117)";

        rounding = 14;

        font_family = "InconsolatalGC";
        placeholder_text = '\'<span foreground="##cad3f5">Password...</span>'\';
        hide_input = true;

        halign = "center";
        valign = "center";

      };

      label = {
        monitor = "HDMI-A-1";

        text = "$TIME";
        font_size = 90;
        font_family = "InconsolatalGC";

        position = "-30, 0";
        halign = "right";
        valign = "center";
      };

      label = {
        monitor = "HDMI-A-1";

        text = cmd[update:60000] date+"%A, %d %B %Y";
        font_size = 25;
        font_family = "InconsolatalGC";

        position = "-30, -150";
        halign = "right";
        valign = "top";
      };
    };

  };
}
