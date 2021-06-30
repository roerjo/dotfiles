. ~/.aliases

export TERM="xterm-256color"

ZSH_THEME="powerlevel9k/powerlevel9k"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:~/.composer/vendor/bin:$PATH:

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

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





###############################################################################
                                  # VI MODE #
###############################################################################

# change insert mode escape sequence
bindkey -M viins 'jk' vi-cmd-mode
# timeout between keystrokes (don't go under 10, 0.1 sec)
export KEYTIMEOUT=10





###############################################################################
                                # POWERLEVEL9K #
                    # ICON/FONT FROM https://nerdfonts.com #
###############################################################################

### BASICS ###

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

### DIR ###

POWERLEVEL9K_ETC_ICON=''
POWERLEVEL9K_DIR_HOME_BACKGROUND='033'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='033'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_ETC_BACKGROUND='033'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='033'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_DIR_BACKGROUND='033'
POWERLEVEL9K_DIR_FOREGROUND='black'

### STATUS ###

POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK=false


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

### NVM ###

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
