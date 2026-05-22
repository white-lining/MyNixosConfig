{ pkgs, ... }: {
 
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;

    globals.mapleader = " ";

    imports = [
      ./modules/options.nix
      ./modules/keymaps.nix
      ./modules/plugins/colorscheme.nix
      ./modules/plugins/small.nix
      ./modules/plugins/telescope.nix
      ./modules/plugins/treesitter.nix
      ./modules/plugins/mini.nix
      ./modules/plugins/twilight.nix
    ];
  };
}
