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


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


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

# Add ghc from stack to path
export PATH="/Users/vikrant/.local/bin:$PATH"

# Add haskell language server to path
export PATH="/Users/vikrant/.hls/:$PATH"

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
