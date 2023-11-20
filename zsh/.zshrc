fastfetch

setopt inc_append_history share_history
SAVEHIST=10000
HISTFILE=~/.zsh_history

autoload -U promptinit; promptinit
prompt pure

alias ls=exa
alias top=bpytop
alias update-grub=sudo grub-mkconfig -o /boot/grub/grub.cfg

eval $(thefuck --alias)

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
