{ pkgs, ... }: {
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;

    extraConfig = ''
      local config = wezterm.config_builder()
      local act = wezterm.action

      config.font = wezterm.font("InconsolataLGC Nerd Font")
      config.font_size = 16
      config.hide_tab_bar_if_only_one_tab = false
      config.window_close_confirmation = 'NeverPrompt'
      config.default_cursor_style = 'BlinkingBar'

      config.colors = {
        background = "#2a2e2e",
        foreground = "#e9f0ef",
        cursor_fg = "#2a2e2e",
        cursor_bg = "#d9faf8",
        cursor_border = "#fffbbf",

        ansi = {
          'black',
          'maroon',
          'green',
          '#fffbbf',
          '#d9faf8',
          'purple',
          '#d9faf8',
          '#e9f0ef',
        }
      }

      config.window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
      }

      config.window_background_opacity = 0.8

      config.keys = {
        {
          key = 'j',
          mods = 'ALT',
          action = act.SpawnTab 'CurrentPaneDomain',
        },
        { key = 'h', mods = 'ALT', action = act.ActivateTabRelative(-1)},
        { key = 'l', mods = 'ALT', action = act.ActivateTabRelative(1)},
      }
      return config
    '';
  };
}
