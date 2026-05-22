{ pkgs, ... }: {
  plugins = {
    mini = {
      enable = true;
      modules = {
        starter = {
          enable = true;
        };
      };
    };
  };
}
