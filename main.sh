function run_if_exists {
    if [ -f $1 ]; then
        . $1
    else
        echo "Can't find $1"
    fi
}

if [[ -o login ]] cat ~/.dotfiles/startup.txt

run_if_exists ~/.dotfiles/paths.sh
run_if_exists ~/.dotfiles/aliases.sh
run_if_exists ~/.dotfiles/funcs.sh
