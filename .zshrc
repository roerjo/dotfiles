. ~/.aliases

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/eric/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  tmux
  zsh-syntax-highlighting
  zsh-autosuggestions
  vi-mode
)

source $ZSH/oh-my-zsh.sh

######################
### Vi Mode Config ###
######################

# change insert mode escape sequence
bindkey -M viins 'jk' vi-cmd-mode
# timeout between keystrokes (don't go under 10, 0.1 sec)
export KEYTIMEOUT=10
