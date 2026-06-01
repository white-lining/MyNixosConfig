{ pkgs, config, ... }:
{
  services = {
    dbus.enable = true;

    udisks2.enable = true;

    display-manager.sddm = {
      enable = true;
      wayland.enable = true;
      defaultSession = "hyprland";
      package = pkgs.kdePackages.sddm;
      theme = "sddm-astronaut-theme";
      extraPackages = [ pkgs.sddm-astronaut ];
    };

    swww.enable = true;

    # displayManager.ly = {
    #   enable = true;
    #   settings = {
    #     bigclock = true;
    #   };
    # };

    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
    };

    power-profiles-daemon.enable = true;

    flatpak.enable = true;

  };
}
