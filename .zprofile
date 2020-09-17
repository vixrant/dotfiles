###########
# ALIASES #
###########
. ~/.aliases

##########
# NODEJS #
##########

# NVM start eager load:
#export NVM_DIR="$HOME/.nvm"
#    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 


# NVM start lazy load: 
function loadnvm() { 
    NVM_DIR="$HOME/.nvm"
    export NVM_DIR
    # shellcheck disable=SC1090
    source "${NVM_DIR}/nvm.sh"
    if [[ -e ~/.nvm/alias/default ]]; then
      PATH="${PATH}:${HOME}.nvm/versions/node/$(cat ~/.nvm/alias/default)/bin"
    fi
      [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 
}

# On first use, it will set nvm up properly which will replace the `nvm`
# shell function with the real one
function nvm() {
  if [[ -d "$HOME/.nvm" ]]; then
    loadnvm
    # invoke the real nvm function now
    nvm "$@"
  else
    echo "nvm is not installed" >&2
    return 1
  fi
}

##########
# GOLANG #
##########

# Golang home
export GOPATH=~/proj/go
export GO111MODULE=on
export PATH="$PATH:$GOPATH/bin"

##########
# PYTHON #
##########

# Python autocomplete.
# export PYTHONSTARTUP=~/.pythonrc

########
# JAVA #
########

export PATH="/usr/local/opt/openjdk/bin:$PATH"

#######
# CPP #
#######

export PATH="/Applications/CMake.app/Contents/bin":"$PATH"

###########
# HASKELL #
###########

export PATH="~/.local/bin:$PATH"

##################
# OTHER SETTINGS #
##################

# Autocomplete
autoload -U compinit && compinit

# Those pesky .DS_Store files
function ll { ls -la $@ | grep -v .DS_Store; }

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

