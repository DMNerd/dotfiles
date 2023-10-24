fastfetch

setopt inc_append_history share_history
SAVEHIST=10000
HISTFILE=~/.zsh_history

fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

alias ls=lsd
alias top=bpytop
eval $(thefuck --alias)

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh