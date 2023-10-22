#Check if stow is installed using dnf
paru -Qs stow || paru -S stow

#Terminator
paru -Qs terminator || paru -S terminator

if  test -d $HOME/.config/terminator; then
    rm -rf $HOME/.config/terminator
fi
mkdir $HOME/.config/terminator

stow -t $HOME/.config/terminator -D terminator 
stow -t $HOME/.config/terminator -v terminator

#ZSH
paru -Qs zsh || paru -S zsh

paru -Qs fastfetch || paru -S fastfetch
paru -Qs bpytop || paru -S bpytop
paru -Qs lsd || paru -S lsd
paru -Qs thefuck || paru -S thefuck

if ! [ -L "$HOME/.zshrc" ] && test -f $HOME/.zshrc; then
    rm $HOME/.zshrc
fi

stow -t $HOME -D zsh
stow -t $HOME -v zsh