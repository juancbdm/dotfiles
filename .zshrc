# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# If not in tmux, start tmux
if [ "$TMUX" = "" ]; then tmux; fi

setxkbmap -model pc105 -layout us -variant altgr-intl

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export UPDATE_ZSH_DAYS=1

ZSH_THEME="darkblood"
#ZSH_THEME="comutheme"

plugins=(
   git
   zsh-autosuggestions
   zsh-syntax-highlighting
   zsh-completions
   zsh-history-substring-search
   zsh-interactive-cd
   zsh-navigation-tools
   tmux
   docker
   docker-compose
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src


if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
   export EDITOR='vim'
fi

if [ -f $HOME"/.aliases" ]; then
    . $HOME"/.aliases"
fi

source $ZSH/oh-my-zsh.sh
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
