# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# aliases
alias .. =cd ..
alias py=python3
alias python=python3
alias img="kitty +kitten icat"


servers_file=servers.sh
if test -f "$servers_file"; then
    source $servers_file 
fi

# utils functions
gitto(){
    git add -A . ; git commit -am "$1" ; git push
}

# plugins
plugins=(git web-search copyfile)
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh


export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# iterm
bindkey "\e\e[D" backward-word # ⌥←
bindkey "\e\e[C" forward-word # ⌥→


eval "$(starship init zsh)"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="$HOME/.tmuxifier/bin:$PATH"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

