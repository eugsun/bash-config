export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Conda
run_if_exists $HOME/miniconda3/etc/profile.d/conda.sh

# Poetry
run_if_exists $HOME/.poetry/env

export FLUTTER_BIN="$HOME/Apps/flutter/bin"
export PATH="$PATH:$HOME/.pub-cache/bin:$FLUTTER_BIN:$FLUTTER_BIN/cache/dart-sdk/bin"

export ANDROID_HOME="$HOME/Android/sdk/"
export PATH="$PATH:$ANDROID_HOME"

# Haskell
. "$HOME/.ghcup/env"

# Node
export NVM_DIR="$HOME/.nvm"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Go
export PATH="$HOME/go/bin:$PATH"

# Lua
export PATH="$HOME/.luaenv/bin:$PATH"
eval "$(luaenv init -)"

# Local BINs
export PATH="$HOME/.local/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
run_if_exists $HOME/.rvm/scripts/rvm
