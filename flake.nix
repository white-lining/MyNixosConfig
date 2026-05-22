{
  description = "Flake of Kumoren";

  # The inputs are stable nixpkgs, home-manager and nixvim
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim.url = "github:nix-community/nixvim/nixos-25.11";
  };

  outputs = { self, nixpkgs, home-manager, nixvim, ... }: {
    nixosConfigurations.nixlotus = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        # Importing the system wide configuration
        ./modules/configuration.nix

        # Configuring home-manager
	      home-manager.nixosModules.home-manager
        {
          home-manager.backupFileExtension = "backup";
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.kumoren = {
              imports = [
                ./modules/home-manager/home.nix
                nixvim.homeModules.nixvim
              ];
            };
          };
        }	
      ];
    };
  };
}
