
function colorssh {
    if [[ "$*" =~ "dip.test*" ]]; then
        set_background_color midnight blue
    fi

    if [[ "$*" =~ "dip.prod*" ]]; then
        set_background_color firebrick4
    fi

    ssh $*

    # reset
    set_background_color black
}

# This one does the autocompletion of the hosts
# compdef _ssh colorssh=ssh

# alias ssh="colorssh"

