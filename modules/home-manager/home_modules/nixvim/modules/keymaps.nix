{ self, ... }: {
  
  keymaps = [

    {
      mode = "n";
      key = "<leader>w";
      action = "<cmd>w<CR>";
      options = {
        desc = "set 'space' + w to save changes'";
      };
    }

    {
      mode = "n";
      key = "<leader>q";
      action = ":q<CR>";
      options = {
        noremap = true;
        desc = "quit";
      };
    }

    {
      mode = "n";
      key = "<leader>e";
      action = ":Ex<CR>";
    }

    {
      mode = "n";
      key = "<leader>i";
      action = "A";
    }

    {
      mode = "i";
      key = "<leader>nn";
      action = "<C-n>";
    }

    {
      mode = "i";
      key = "<leader>jj";
      action = "<C-p>";
    }

    {
      mode = "i";
      key = "<leader>hh";
      action = "<Esc>";
    }

    {
      mode = "n";
      key = "<leader>f";
      action = "V";
    }
    {
      mode = "n";
      key = "<leader>zz";
      action = "<cmd>ZenMode<CR>";
      options = {
        desc = "Toggle Zen Mode using space + zz";
      };
    }
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>Twilight<CR>";
      options = {
        desc = "Toggle Twilight with space + tt";
      };
    }

  ];
}
