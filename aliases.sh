alias realias="source $HOME/.aliases"
#alias edaemon="emacs --daemon"
alias enw="emacsclient"
alias enw="emacs -nw"

alias tgrep="grep --color -n -R"
alias nfind="find ./ -name"

alias gpr="git pull --rebase origin"
alias grh="git reset HEAD ."
alias gco="git checkout -- ."
alias stashpp="git stash; git pull --rebase; git stash pop"

alias gcp="git cherry-pick"
alias gitbranches="git branch -vv --sort=-committerdate"
alias ddos="netstat -anp |grep 'tcp\|udp' | awk '{print }' | cut -d: -f1 | sort | uniq -c"

export DIST_FILES="*.min.css *.min.js *.min.js.map *.min.css.map **/dist/*.css **/webpack-stats-dist.json"
alias cleandist="git checkout -- $DIST_FILES"
alias resetdist="git reset HEAD $DIST_FILES"
alias crdist="resetdist && cleandist"
