{ pkgs, config, ... }:
{
  # Used with AerialOpen, Side panel for functions, methods, etc.
  plugins.aerial = {
    enable = true;

    settings = {
      attach_mode = "global";
      backends = [
        "treesitter"
        "markdown"
        "man"
      ];

      disable_max_lines = 5000;
      highlight_on_hover = true;
      ignore = {
        filetypes = [
          "gomod"
        ];
      };

    };
  };
}
