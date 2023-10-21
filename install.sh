#Check if stow is installed using dnf
dnf search stow || dnf install stow

#Terminator
dnf search terminator || dnf terminator

stow -t $HOME/.config/terminator -D terminator 
stow -t $HOME/.config/terminator -v terminator

#ZSH
dnf search fastfetch || dnf fastfetch
dnf search bpytop || dnf bpytop
dnf search lsd || dnf lsd

stow -t $HOME -D zsh
stow -t $HOME -v zsh