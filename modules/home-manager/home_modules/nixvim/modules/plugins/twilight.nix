{ pkgs, ... }:{
  plugins.twilight = {
    enable = true;
    settings = {
      context = 7;
      dimming = {
        alpha = 0.4;
        inactive = false;
      };
      expand = [
        "function"
        "method"
        "table"
        "if_statement"
      ];
      treesitter = true;
    };
  };
}
