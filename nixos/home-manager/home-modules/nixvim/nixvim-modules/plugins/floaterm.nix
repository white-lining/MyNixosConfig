{ pkgs, config, ... }:
{
  plugins.floaterm = {
    enable = true;

    settings = {
      height = 0.9;
      keymap_kill = "<leader>fk";
      keymap_new = "<leader>ft";
      keymap_next = "<leader>fn";
      keymap_prev = "<leader>fb";
      keymap_toggle = "<leader>t";

      opener = "edit ";
      rootmarkers = [
        "build/CMakeFiles"
        ".project"
        ".git"
        ".hg"
        ".svn"
        ".root"
      ];

      title = "";
      width = 0.9;

    };

  };

}
