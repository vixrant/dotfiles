###########
# STARTUP #
###########

export COWPATH=~/.cows/
fortune | cowsay | lolcat

##########
# PROMPT #
##########


###########
# ALIASES #
###########
. ~/.aliases

##########
# NODEJS #
##########

# NVM start:
export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 

##########
# GOLANG #
##########

# Golang home
export GOPATH=~/proj/golang
export PATH="$PATH:$GOPATH/bin"

##########
# PYTHON #
##########

# Python autocomplete.
export PYTHONSTARTUP=~/.pythonrc

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Readline
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

########
# BASH #
########

# brew install z for fast cd
. /usr/local/etc/profile.d/z.sh

# For the brew package 'TheFuck'
eval $(thefuck --alias)

# Colour outputs!
export CLICOLOR=true
export CLICOLOR_FORCE=true

##################
# OTHER SETTINGS #
##################

autoload predict-on
predict-on

# Those pesky .DS_Store files
function ll { ls -la $@ | grep -v .DS_Store; }

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# This fixes pyenv installs 
export CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" 
