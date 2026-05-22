{ self, pkgs, ... }: {

 opts = {

   # Line numbers
   number = true;
   relativenumber = true;
   scrolloff = 12;
   sidescrolloff = 12;

   # More colors
   termguicolors = true;

   # Default completion
   completeopt = [
     "menuone"
     # "menu"
   ];

   # search
   ignorecase = true;
   smartcase = true;
   hlsearch = true;
   incsearch = true;

   # tabs
   expandtab = true;
   tabstop = 2;
   shiftwidth = 2;
   softtabstop = 2;
   smarttab = true;


   # file handling
   writebackup = false;
   swapfile = false;
   undofile = true;

   # Other
   signcolumn = "yes";
   modifiable = true;
   hidden = true;
   encoding = "UTF-8";
   errorbells = false;
 };
}
