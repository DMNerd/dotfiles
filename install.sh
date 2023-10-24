#Check if stow is installed using dnf
dnf search stow || sudo dnf install stow

#Terminator
dnf search terminator || sudo dnf install terminator

if  test -d $HOME/.config/terminator; then
    rm -rf $HOME/.config/terminator
fi

mkdir $HOME/.config/terminator

stow -t $HOME/.config/terminator -D terminator 
stow -t $HOME/.config/terminator -v terminator

#ZSH
dnf search zsh || sudo dnf install zsh

if ! test -d $HOME/.zsh/pure; then
    git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi

if ! test -d $HOME/.zsh/zsh-autosuggestions; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.zsh/zsh-autosuggestions"
fi

dnf search fastfetch || sudo dnf install fastfetch
dnf search bpytop || sudo dnf install bpytop
dnf search lsd || sudo dnf install lsd
dnf search thefuck || sudo dnf install thefuck

if test -f $HOME/.zshrc; then
    rm $HOME/.zshrc
fi

stow -t $HOME -D zsh
stow -t $HOME -v zsh