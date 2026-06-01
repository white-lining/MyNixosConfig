{ pkgs, config, nixvim, ... }:
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;

    globals.mapleader = " ";

    imports = [
      ./nixvim-modules/options.nix
      ./nixvim-modules/plugins/colorscheme.nix
      ./nixvim-modules/plugins/telescope.nix
      ./nixvim-modules/plugins/treesitter.nix
      ./nixvim-modules/plugins/twilight.nix
      ./nixvim-modules/plugins/aerial.nix
      ./nixvim-modules/plugins/small.nix
      ./nixvim-modules/plugins/arrow.nix
      ./nixvim-modules/plugins/cursorline.nix
      ./nixvim-modules/plugins/floaterm.nix
      ./nixvim-modules/plugins/indent-blankline.nix
      ./nixvim-modules/keymaps.nix
    ];
  };
}
