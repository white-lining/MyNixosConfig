{ pkgs, config, lib, ... }:
{
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  networking = {
    hostName = "nixlotus";
    networkmanager.enable = true;
  };

  time.timeZone = "America/Argentina/Cordoba";

  users.users.kumoren = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  programs = {

    firefox.enable = true;

    hyprland = {
      enable = true;
      xwayland.enable = true;
    };

    gamemode.enable = true;

    fish.enable = true;

    steam.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland
    ];
    config.common.default = "*";
  };

  xdg.mimeApps = {
    enable = true;
    defaultApplication = {
      "inode/directory" = [ "thunar.desktop" ];
    };
  };

}
