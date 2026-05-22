{ pkgs, ...}: {
  
  programs.kitty = {
    enable = true;

    enableGitIntegration = true;

    font = {
      name = "InconsolataLGC Nerd Font Mono";
      size = 16;
    };

    settings = {
      background_opacity = "0.85";

      background = "#2a2e2e";
      foreground = "#e9f0ef";
      cursor = "#d9faf8";
    };
  };
}
