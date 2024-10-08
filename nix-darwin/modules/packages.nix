{pkgs, ...}: {
  # Packages
  environment.systemPackages = with pkgs; [
    asitop
    btop
    bat
    eza
    git
    just
    thefuck
    macchina
    mas
    m-cli
    neovim
    nnn
    lua5_4
    jq
  ];
  fonts = {
    packages = with pkgs; [
      # icon fonts
      material-design-icons
      font-awesome
      fira-code-symbols
      # nerdfonts
      (nerdfonts.override {
        fonts = [
          # symbols icon only
          "NerdFontsSymbolsOnly"
          # Characters
          "SourceCodePro"
          "Hack"
          "Iosevka"
          "JetBrainsMono"
          "SpaceMono"
        ];
      })
    ];
  };
}
