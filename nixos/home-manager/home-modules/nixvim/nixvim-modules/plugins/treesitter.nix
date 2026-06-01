{ pkgs, config, ... }:
{
  plugins.treesitter = {
    enable = true;
    highlight = true;
    indent = true;
    folding.enable = true;

    grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
      bash
      json
      java
      python
      nix
      js
      markdown
    ];
  };
}
