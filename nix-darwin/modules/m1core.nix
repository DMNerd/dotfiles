{
  inputs,
  pkgs,
  lib,
  ...
}: {
  # Necessary for using flakes on this system.
  nix = {
    package = pkgs.nix;
    settings = {
      "extra-experimental-features" = ["nix-command" "flakes"];
      "trusted-users" = ["dmnerd"];
      "max-jobs" = "auto";
      "auto-optimise-store" = true;
      "warn-dirty" = false;
    };
    extraOptions = ''
      extra-platforms = x86_64-darwin aarch64-darwin
    '';
    configureBuildUsers = true;
    gc = {
      automatic = true;
      interval.Day = 7;
      options = "--delete-older-than 7d";
    };
  };
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  #Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
  system.checks.verifyNixPath = false;

  nixpkgs = {
    hostPlatform = "aarch64-darwin";
    config.allowUnfree = true;
  };

  users.users."dmnerd" = {
    home = "/Users/dmnerd";
    description = "dmnerd";
    shell = pkgs.zsh;
  };

  programs.nix-index.enable = true;
}
