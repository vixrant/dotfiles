###########
# ALIASES #
###########
. ~/.aliases

##########
# NODEJS #
##########

# NVM start eager load:
export NVM_DIR="$HOME/.nvm"
export PATH="$NVM_DIR/versions/node/$(<$NVM_DIR/alias/default)/bin:$PATH"
function load_nvm {
  echo "Loading nvm..."
  unalias nvm
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
  nvm $@
}
# alias nvm="unalias nvm; [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"; nvm $@"
alias nvm="load_nvm"

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

export PATH="/Users/vikrant/.local/bin:$PATH"

if [ ! -f ~/.local/bin/ghci ]; then
    echo '#!/bin/bash' > ~/.local/bin/ghci;
    echo 'stack exec -- ghci $@' >> ~/.local/bin/ghci;
    chmod +x ~/.local/bin/ghci;
    echo "~/.local/bin/ghci created."
fi

if [ ! -f ~/.local/bin/ghc ]; then
    echo '#!/bin/bash' > ~/.local/bin/ghc;
    echo 'stack exec -- ghc $@' >> ~/.local/bin/ghc;
    chmod +x ~/.local/bin/ghc;
    echo "~/.local/bin/ghc created."
fi

if [ ! -f ~/.local/bin/runghc ]; then
    echo '#!/bin/bash' > ~/.local/bin/runghc;
    echo 'stack exec -- runghc $@' >> ~/.local/bin/runghc;
    chmod +x ~/.local/bin/runghc;
    echo "~/.local/bin/runghc created."
fi

#########
# EMACS #
#########
function eccc()
{
  # -c creates a new frame
  # -a= fires a new emacs server if none is running
  emacsclient -a= $*
}

export EDITOR="emacsclient"

########
# LLVM #
########

export PATH="/usr/local/opt/llvm/bin:$PATH"

##################
# OTHER SETTINGS #
##################

# Autocomplete
autoload -U compinit && compinit

# Those pesky .DS_Store files
function ll { ls -la $@ | grep -v .DS_Store; }

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Homebrew
export PATH="/usr/local/sbin:$PATH"
