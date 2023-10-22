#Check if stow is installed using dnf
paru -Qs stow || paru -S stow

#Terminator
paru -Qs terminator || paru -S terminator

stow -t $HOME/.config/terminator -D terminator 
stow -t $HOME/.config/terminator -v terminator

#ZSH
paru -Qs zsh || paru -S zsh

paru -Qs fastfetch || paru -S fastfetch
paru -Qs bpytop || paru -S bpytop
dparu -Qs lsd || paru -S lsd

stow -t $HOME -D zsh
stow -t $HOME -v zsh