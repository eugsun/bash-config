function add_alias {
    if [ $# -ne 2 ]; then
        echo "add_alias <alias-name> <mapped-command>"
        return
    fi

    echo "alias $1=\"$2\"" >> $HOME/.aliases
    echo "Alias added successfully."
    source $HOME/.bash_aliases
}

function kdbp { # kill database processes
psql -Uroot template1 << EOF
SELECT pg_terminate_backend(pid) FROM pg_stat_activity where pid <> pg_backend_pid();
EOF
}

function cdn {
    if [ $# -ne 1 ]; then
        echo "cdn <number of '..'>"
        return
    fi

    for (( c=1; c<=$1; c++))
    do
        cd ..
    done
}

function l {
    ls -lth --color $1 | more
}

function logk {
    if [ $# -ne 1 ]; then
        echo "logp <tomcat log's keyword>"
        return
    fi
    tail -f $CATALINA_HOME/logs/*$1*.log
}

function checkout {
    if [ $# -ne 2 ]; then
        echo "Usage: checkout <local branch name> <origin branch name>"
        echo "   Ex: checkout master-stuff master"
        return
    fi
    git checkout -b $1 --track "origin/$2"
}

function checkoutm {
    checkout $1
}

function push {
    if [ $# -ne 1 ]; then
        echo "Usage: push <origin branch name>"
        echo "   Ex: push master"
        return
    fi
    git push origin HEAD:refs/for/$1
}

function pushd {
    if [ $# -ne 1 ]; then
        echo "Usage: pushd <origin branch name>"
        echo "   Ex: pushd master"
        return
    fi
    git push origin HEAD:refs/drafts/$1
}

function pushm {
    push master
}

function findtext {
    if [ $# -ne 2 ] && [ $# -ne 3 ]; then
        echo "Usage: findtext <file pattern> <text pattern> [surrounding line count]"
        echo "   Ex: findtext pom.xml kiosk-core 3"
        return
    fi
    if [ $# -eq 3 ]; then
        centerArg="-C$3"
    else
        centerArg=
    fi
    nfind "$1" | xargs grep -n "$2" "$centerArg"
}

function replace {
    if [ $# -ne 3 ]; then
        echo "Usage: replace <file pattern> <text pattern> <replace text pattern>"
        echo "   Ex: replace '*.xml' 'old-message' 'new-message'"
    fi
    find ./ -name "$1" | xargs sed -i "s/$2/$3/g"
}

function check_nginx {
    # command="service status nginx | grep start"
    grep_cmd="grep gulpfile.js > /dev/null"
    stuff=1
    if [ $stuff = "1" ] && ls | $grep_cmd; then
        echo "started";
    else
        echo "stopped";
    fi
}

function pushself {
    git rev-parse --abbrev-ref HEAD | xargs git push -u origin
}
