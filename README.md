# NIXOS CONFIGURATION
---

Hello! i am new in nixos and this is my configuration, i just wanted to put it here to have it and not lose it. Is vary basic and not working at the moment since i'm having trouble making portals work with hyprland 

* This configuration uses **Flakes** to get the stable nixpkgs, home-manager, and nixvim.If you take a look at the configuration, it's kind of all over the place, first because i'm new to nixos and second because of the trouble with portals in hyprland, before using hyprland i used cachyos and kde plasma so maybe it wasn't a good idea to introduce myself to a lot of new things at once, but i'll make it work somehow. Feel free to see or use this config freely, although i recommend not using it as is, since it won't work at all, and if you wonder why it's here if it doesn't work, i just need it too be here to keep track of it, that's all.

# Overview
This configuration uses hyprland, swww and waybar for the desktop, and very basic ones at that. for text editing and coding i use a basic nixvim configuration entirely declared through home-manager.I use flatpak since i need bottles for one very specific windows only application. As i said it's very basic, and i plan to update it every time i make big adjustments.

# My problem with portals.
i'm trying to make xdg-desktop-portal work with hyprland, i had managed to do it, XDPH was working fine, and i had it along xdg-desktop-portal-gtk as it's recomended on the wiki since i need a file picker, but then i changed to niri to try it out, then went back to hyprland, that caused ly(my old display manager) to not recongnize hyprland, so i opted to use sddm, it recognized hyprland but the portals didn't work at all. Right now i'm checking other people's nixOs hyprland configs to see what i can do.


