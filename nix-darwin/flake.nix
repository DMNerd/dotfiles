{
  description = "Nerd`s System Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
  let
    configuration = { pkgs, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget

      # Auto upgrade nix package and the daemon service.
      services.nix-daemon.enable = true;
      nix.package = pkgs.nix;

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 4;

      # The platform the configuration will be used on.
      nixpkgs.config.allowUnfree = true;
      nixpkgs.hostPlatform = "aarch64-darwin";
      nix.extraOptions = ''
        extra-platforms = x86_64-darwin aarch64-darwin
      '';
      nix.settings = {
        auto-optimise-store = false;
        warn-dirty = false;
      };

  };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#Adams-MacBook-Air
    darwinConfigurations."Adams-MacBook-Air" = nix-darwin.lib.darwinSystem {
      modules = [ 
        configuration 
        ./modules/system.nix
        ./modules/packages.nix
        ./modules/homebrew.nix
      ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."Adams-MacBook-Air".pkgs;
  };
}