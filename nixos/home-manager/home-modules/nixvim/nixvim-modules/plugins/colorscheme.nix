{ pkgs, config, ... }:
{

  colorscheme.nord = {
    enable = true;
    package = pkgs.vimPlugins.nord-nvim;
  };
  plugins.lualine.enable = true;

}
