#Check if stow is installed using dnf
sudo dnf install stow -y

#Alacritty 
sudo dnf install alacritty -y

#Guake
sudo dnf install guake -y

guake --restore-preferences ./guake/guake_prefs

#ZSH
sudo dnf install zsh -y
chsh -s $(which zsh)

if ! test -d $HOME/.zsh/pure; then
    git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi

if ! test -d $HOME/.zsh/zsh-autosuggestions; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.zsh/zsh-autosuggestions"
fi

if test -f $HOME/.zshrc; then
    rm $HOME/.zshrc
fi

sudo dnf install fastfetch -y
sudo dnf install bpytop -y
sudo dnf install exa -y
sudo dnf install thefuck -y

stow -t $HOME -D zsh
stow -t $HOME -v zsh