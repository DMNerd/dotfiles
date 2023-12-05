#Config YAY
yay --save --nocleanmenu --nodiffmenu

#Theme
yay -Qs materia-gtk-theme || yay -S materia-gtk-theme

#Fonts
yay -Qs nerd-fonts-meta || yay -S nerd-fonts-meta
yay -Qs ttf-ms-fonts || yay -S ttf-ms-fonts
yay -Qs apple-fonts || yay -S apple-fonts

#Check if stow is installed using dnf
yay -Qs stow || yay -S stow

#ZSH
yay -Qs zsh || yay -S zsh
chsh -s $(which zsh)

yay -Qs zsh-pure-prompt || yay -S zsh-pure-prompt
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

yay -Qs fastfetch || yay -S fastfetch
yay -Qs bpytop || yay -S bpytop
yay -Qs exa || yay -S exa
yay -Qs thefuck || yay -S thefuck

if test -f $HOME/.zshrc; then
    rm $HOME/.zshrc
fi

stow -t $HOME -D zsh
stow -t $HOME -v zsh

#Terminator
sudo apt install terminator

if  test -d $HOME/.config/terminator; then
    rm -rf $HOME/.config/terminator
fi

mkdir $HOME/.config/terminator

stow -t $HOME/.config/terminator -D terminator 
stow -t $HOME/.config/terminator -v terminator

#Gnome
yay -S gnome-shell-extension-dash-to-dock
yay -S gnome-shell-extension-caffeine