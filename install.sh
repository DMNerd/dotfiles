#Config YAY
yay --save --nocleanmenu --nodiffmenu

#Theme
yay -Qs materia-kde || yay -S materia-kde
yay -Qs materia-gtk-theme || yay -S materia-gtk-theme
yay -Qs kvantum-theme-materia || yay -S kvantum-theme-materia

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
yay -Qs lsd || yay -S lsd
yay -Qs thefuck || yay -S thefuck

if test -f $HOME/.zshrc; then
    rm $HOME/.zshrc
fi

stow -t $HOME -D zsh
stow -t $HOME -v zsh

#Alacritty
yay -Qs alacritty || yay -S alacritty

#Yakuake
yay -Qs yakuake || yay -S yakuake
