#!/bin/bash

alias realias="source $HOME/.bash_aliases"
#alias edaemon="emacs --daemon"
alias enw="emacsclient"
alias enw="emacs -nw"

alias tgrep="grep --color -n -R"
alias nfind="find ./ -name"

alias gpr="git pull --rebase origin"
alias grh="git reset HEAD ."
alias gco="git checkout -- ."
alias stashpp="git stash; git pull --rebase; git stash pop"
