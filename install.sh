#Check if stow is installed using dnf
dnf search stow || sudo dnf install stow

#Terminator
dnf search terminator || sudo dnf terminator

stow -t $HOME/.config/terminator -D terminator 
stow -t $HOME/.config/terminator -v terminator

#ZSH
dnf search fastfetch || sudo dnf fastfetch
dnf search bpytop || sudo dnf bpytop
dnf search lsd || sudo dnf lsd

stow -t $HOME -D zsh
stow -t $HOME -v zsh