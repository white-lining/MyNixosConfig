{ pkgs, config, ... }: {
  plugins.treesitter = {
    enable = true;

    settings.highlight.enable = true;
    # indent.enable = true;

    grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
      bash
      json
      markdown
      nix
      python
      java
    ];
  };
}
