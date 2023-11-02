#Check if stow is installed using dnf
sudo dnf install stow

#Terminator
sudo dnf install terminator

if  test -d $HOME/.config/terminator; then
    rm -rf $HOME/.config/terminator
fi

mkdir $HOME/.config/terminator

stow -t $HOME/.config/terminator -D terminator 
stow -t $HOME/.config/terminator -v terminator

#Guake
sudo dnf install guake

guake --restore-preferences ./guake/guake_prefs

#ZSH
sudo dnf install zsh
chsh -s $(which zsh)

if ! test -d $HOME/.zsh/pure; then
    git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi

if ! test -d $HOME/.zsh/zsh-autosuggestions; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.zsh/zsh-autosuggestions"
fi

sudo dnf install fastfetch
sudo dnf install bpytop
sudo dnf install exa
sudo dnf install thefuck

if test -f $HOME/.zshrc; then
    rm $HOME/.zshrc
fi

stow -t $HOME -D zsh
stow -t $HOME -v zsh