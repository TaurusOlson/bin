#!/bin/bash
# ------------------------------------------------
# @Filename    : icommand.sh
# @Date        : 2010-07-26
# @Author      : Taurus Olson
# @Email       : <taurusolson@gmail.com>
# @Last Change : 
# @Revision    : 0.0
# ------------------------------------------------

DOTHIS=$*
DIR="$HOME/.commands"
FILE="$DIR/`date +%m_%d_%y`.doit"

if [[ ! -e $DIR ]]; then
    mkdir $DIR 
    echo "The directory $DIR has been created."
fi

touch $FILE
echo $DOTHIS >> $FILE
