{ pkgs, config, ... }:
{
  programs.wlogout = {
    enable = true;

    layout = [

      # Shutdown function
      {
        label = "shutdown";
        action = "systemctl poweroff";
        text = "Shutdown-s";
        keybind = "s";
      }

      # Session locking
      {
        label = "session-lock";
        action = "loginctl lock-session";
        text = "lock-l";
        keybinding = "l";
      }

      # Hibernation
      {
        label = "hibernate";
        action = "systemctl hibernate";
        text = "Hibernate-h";
        keybinding = "h";
      }

      # Suspension
      {
        label = "suspend";
        action = "systemctl suspend";
        text = "Suspend-u";
        keybinding = "u";
      }

      # Reboot
      {
        label = "reboot";
        action = "systemctl reboot";
        text = "Reboot-r";
        keybinding = "r";
      }

      # Logout 
      {
        label = "logout";
        action = "loginctl terminate-user $USER";
        text = "Logout-o";
        keybinding = "o";
      }
    ];

    style = ''
      window {
        background-color: rgba(46, 47, 47, 1);
      }

      button {
        border-radius: 2;
        border-color: rgba(255, 50, 106, 1);
        text-decoration-color: #30d8bc;
        color: #d4d4d5;
        background-color: #2e2f2f;
        border-style: solid;
        border-width: 2px;
        background-repeat: no-repeat;
        background-position: center;
        background-size: 25%;
      }
      
      button:focus, button:active, button:hover {
        background-color: #d4d4d5;
        color: #2e2e2f;
        outline-style: none;
      }
    '';

  };
}
