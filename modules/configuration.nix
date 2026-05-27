{ config, lib, pkgs, ... }:

{
  # Importing the hardware configuration
  imports = [ /etc/nixos/hardware-configuration.nix ];

  # Allowing unfree software
  nixpkgs.config.allowUnfree = true;

  # Bootloader
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  # Allowing flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  #Network
  networking = {
    hostName = "nixlotus";
    networkmanager.enable = true;
  };


  # services
  services = {
    # Dbus
    dbus.enable = true;

    # Udisks2
    udisks2.enable = true;

    # Display manager
    displayManager.ly = {
      enable = true;
      settings = {
        bigclock = true;
      };
    };

    # Audio
    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
    };
  };

  # Timezone
  time.timeZone = "America/Argentina/Cordoba";
  
  # Defining the user
  users.users.kumoren = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  # Browser
  programs.firefox.enable = true;

  # Portal configuration
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
    config = {
      common = {
        default = [ "gtk" ];
      };
  };

  # Packages to be installed
  environment.systemPackages = with pkgs; [
    # General/basic
    wget
    vim
    udiskie
    mako
    xfce.thunar
    steam

    # Coding
    neovim
    git
    python3
    sqlite
    postgresql

    # Desktop
    hyprland
    hyprpaper
    fuzzel
    waybar
    fastfetch
    wezterm
    onlyoffice-desktopeditors

    # Other utilities
    alsa-utils
    yazi
    kitty
    bat
    tree
    btop
    ripgrep
    mpd
    ncmpcpp
    yt-dlp
    mpc
  ];

  fonts = {
    fontconfig.enable = true;
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      nerd-fonts.inconsolata-lgc
    ];
  };

  programs.steam.enable = true;
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.flatpak.enable = true;

  system.stateVersion = "25.11";
}
