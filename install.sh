#Check if stow is installed using homebrew
brew list stow || brew install stow

#YABAI and SKHD
stow -t $HOME/.config/yabai -D yabai
stow -t $HOME/.config/yabai -v yabai

stow -t $HOME/.config/skhd -D skhd
stow -t $HOME/.config/skhd -v skhd

#Terminal
brew list warp || brew install warp

#Fonts
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
#Prompt
brew list starship || brew install starship

brew list fastfetch || brew install fastfetch
brew list bpytop || brew install bpytop
brew list lsd || brew install lsd
brew list thefuck || brew install thefuck

stow -t $HOME -D zsh
stow -t $HOME -v zsh

#Code and Text editor
brew list visual-studio-code || brew install visual-studio-code

#Raycast
brew list raycast || brew install raycast

#Tuxera NTFS
brew list tuxera-ntfs || brew install tuxera-ntfs

#Preffered Browser
brew list floorp || brew install floorp
