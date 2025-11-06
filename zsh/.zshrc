# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

plugins=(git)

source $ZSH/oh-my-zsh.sh

#### User configuration ##########################################################################

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='emacs'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


source ~/.shellrc
source ~/.bash_aliases 

# My autocompletions
# . ~/.zsh/completion/dplus 
# . ~/.zsh/challenge_checker-compete.sh

# Used asdf
. $HOME/.asdf/asdf.sh

    
# eval "$(zellij setup --generate-auto-start zsh)"
## fix issue with mouse not working with zellij

# Load Angular CLI autocompletion.
#source <(ng completion script)

# export PATH=~/.js/npm-global/bin:$PATH

# opam configuration
#[[ ! -r /home/mukund/.opam/opam-init/init.zsh ]] || source /home/mukund/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null


# Pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"


### swift
# export PATH=/opt/infrastructure/swift/swift/usr/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

#export PATH="$PATH:/home/mukund/.local/share/coursier/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ideally this should be handled with sdkman
export GRADLE_HOME=/opt/infrastructure/build/gradle

export PATH=$PATH:$GRADLE_HOME/bin
