{ self, pkgs, ... }:
{
  keymaps = [

    {
      mode = "n";
      key = "<leader>w";
      action = "<cmd>w<CR>";
    }

    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>q<CR>";
    }

    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Ex<CR>";
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
      key = "<leader>s";
      action = "V";
    }

    {
      mode = "n";
      key = "<leader>zz";
      action = "<cmd>ZenMode<CR>";
    }

    {
      mode = "n";
      key = "<leader>mm";
      action = "<cmd>Twilight<CR>";
    }

  ];
}
