fastfetch

setopt inc_append_history share_history
SAVEHIST=10000
HISTFILE=~/.zsh_history

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

alias top=bpytop

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
