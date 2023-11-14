#Config YAY
yay --save --nocleanmenu --nodiffmenu

#Check if stow is installed using dnf
yay -Qs stow || yay -S stow

#ZSH
yay -Qs zsh || yay -S zsh
chsh -s $(which zsh)

yay -Qs nerd-fonts-git || yay -S nerd-fonts-git

yay -Qs zsh-pure-prompt || yay -S zsh-pure-prompt
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

yay -Qs fastfetch || yay -S fastfetch
yay -Qs bpytop || yay -S bpytop
yay -Qs lsd || yay -S lsd
yay -Qs thefuck || yay -S thefuck

if test -f $HOME/.zshrc; then
    rm $HOME/.zshrc
fi

stow -t $HOME -D zsh
stow -t $HOME -v zsh


#Alacritty
yay -Qs alacritty || yay -S alacritty

#Guake
yay -Qs guake || yay -S guake
guake --restore-preferences ./guake/guake_prefs

#Gnome Extensions
yay -Qs gnome-shell-extension-dash-to-panel || yay -S gnome-shell-extension-dash-to-panel
