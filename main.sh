function run_if_exists {
    if [ -f $1 ]; then
        . $1
    fi
}

run_if_exists ~/.dotfiles/paths.sh
run_if_exists ~/.dotfiles/aliases.sh
run_if_exists ~/.dotfiles/funcs.sh
