function run_if_exists {
    if [ -f $1 ]; then
        . $1
    fi
}
