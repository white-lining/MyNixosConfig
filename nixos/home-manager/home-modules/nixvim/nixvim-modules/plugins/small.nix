{ pkgs, config, ... }:
{
  # Simple or small plugins
  plugins = {

    git-worktree = {
      enable = true;
      enableTelescope = true;
    };

    highlight-colors.enable = true;
    web-devicons.enable = true;
    gitsigns.enable = true;
    todo-comments.enable = true;
    noice.enable = true;

  };
}
