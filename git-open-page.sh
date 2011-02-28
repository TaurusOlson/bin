#!/bin/bash
# ------------------------------------------------
# Filename    : git-open-page.sh
# Description : Open Github repository page
# Date        : 2011-02-25
# Author      : Taurus Olson
# Email       : <taurusolson@gmail.com>
# ------------------------------------------------

url=$(git config --get-all remote.origin.url)

browse() {
    open -a Firefox.app $1
}

# remote.origin.url starts with https
if [[ $(echo $url | grep "^http") ]]; then
    new_url=$(echo $url | sed 's/\.git$//')
    browse $new_url


# remote.origin.url starts with git
elif [[ $(echo $url | grep "^git") ]]; then
    new_url=$(echo $url | sed 's/\.git$//')
    new_url=$(echo $new_url | sed 's/^git/https/')
    browse $new_url

fi
