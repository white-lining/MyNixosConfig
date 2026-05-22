# NIXOS CONFIGURATION
---

Hello! i am new in nixos and this is my configuration, i just wanted to put it here to have it and not lose it. Feel free to use it too, its basic and stable for now.

* This configuration uses **Flakes** to get the stable nixpkgs, home-manager, and nixvim(neovim but configurable via nix entirely)

Home-manager is used to configure most of the programs that the configuration has, this is because i wanted to do everything the "nix way" and i find it very easy to tweek and configure, although having to rebuild the system when applying minor changes can be tiring.

Next is an overview of what this config has.
# Desktop
* This setup is made to be minimalist, so Instead of having a full desktop environment, it uses **hyprland** with **master** layout, acompanied by **fuzzel** to launch applications, **hyprpaper** for the background, and a minimal **waybar** to display just the time and workspaces. For the terminal a chose **wezterm** for its builtin tabs, and lastly, for general text editing and pdf viewing i use **onlyoffice** since i am already used to use it.



# Coding
* I do a lot of coding, and so, for the editor i use nixvim, a distribution of neovim capable of being completely configurable via **home-manager**, i tried not to put too many plugins, so its a basic configuration, has telescope to search files, lualine to display git information, treesitter for highlighting, Zen mode because i like the text being more centered on the screen, twilight to focus on one part of the text(goes well with zen mode) and some other small plugins, like css colors, gitsigns, etc. My focus area is backend development, for that reason i have python3, sqlite and postgresql.

# Others

* Other utilities that i use are alsa-utils to control the volume, **ripgrep**(important to make telescope work), mpd, mpc, and ncmpcpp for music, yazi for primary file exploration, thunar for applications that require a file picker. Also flatpak, this i use only to install and use bottles since i do use one program that is not natively on linux.

That would be all the basics for this configuration of my nixos, feel free to use it or just see it to guide yourself( i did that too)
