{pkgs, ...}: {
  # Packages
  environment.systemPackages = with pkgs; [
    asitop
    btop
    eza
    git
    just
    thefuck
    macchina
    m-cli
    neovim
    nnn
  ];
  fonts = {
    packages = with pkgs; [
      # icon fonts
      material-design-icons
      font-awesome
      fira-code-symbols
      # nerdfonts
      # https://github.com/NixOS/nixpkgs/blob/nixos-24.05/pkgs/data/fonts/nerdfonts/shas.nix
      (nerdfonts.override {
        fonts = [
          # symbols icon only
          "NerdFontsSymbolsOnly"
          # Characters
          "SourceCodePro"
          "Hack"
          "Iosevka"
        ];
      })
    ];
  };
}
