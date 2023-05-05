# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="simple"

# Change the colors used by zsh
eval `dircolors ~/.dircolors`

# Which plugins would you like to load?
plugins=(git)

# Source my aliases
source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/.bash_aliases

# Edit the prompt
PROMPT='%{$fg[green]%}%~%{$fg_bold[blue]%}%{$reset_color%} '

# Loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
