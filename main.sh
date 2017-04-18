function run_if_exists {
    if [ -f $1 ]; then
        . $1
    else
        echo "Can't find $1"
    fi
}

run_if_exists ~/.dotfiles/build.sh
run_if_exists ~/.dotfiles/aliases.sh
run_if_exists ~/.dotfiles/funcs.sh
run_if_exists ~/.werkdotfiles/eugene/main.sh
