# Pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Conda
run_if_exists $HOME/miniconda3/etc/profile.d/conda.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
run_if_exists $HOME/.rvm/scripts/rvm
