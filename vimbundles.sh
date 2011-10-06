#!/bin/bash


[ -z "$VIB" ] && VIB="$HOME/.vim/bunble"
[ ! -d "$VIB" ] && mkdir $VIB && echo "Created $VIB"
cd $VIB


ESC="\033["
FG_RED=${ESC}31m    # red foreground
FG_BLUE=${ESC}34m   # blue foreground
DEFAULT=${ESC}0m    # reset everything to default


# Taken from:
# https://github.com/hashrocket/dotmatrix/blob/master/bin/vimbundles.sh
get_bundle() {
    (
    if [ -d "$2" ]; then
        echo -e $FG_BLUE">> Updating $1's $2"$DEFAULT
        cd "$2"
        git pull --rebase
    else
        echo -e $FG_RED">> Cloning $1's $2"$DEFAULT
        git clone "git://github.com/$1/$2.git"
    fi
    )
}



get_bundle gregsexton gitv
get_bundle sjl gundo
get_bundle scrooloose nerdcommenter
get_bundle scrooloose nerdtree
get_bundle vim-scripts snipMate
get_bundle vim-scripts mru
get_bundle vim-scripts lastchange
get_bundle vim-scripts Align
get_bundle vim-scripts taglist
get_bundle Shougo unite
get_bundle thinca vim-quickrun
get_bundle tpope vim-commentary
get_bundle tpope vim-unimpaired
get_bundle tpope vim-fugitive
get_bundle tpope vim-git
get_bundle tpope vim-surround
get_bundle mineiro vim-latex
get_bundle gmarik vundle
