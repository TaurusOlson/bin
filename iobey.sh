#!/bin/bash
# ------------------------------------------------
# @Filename    : iobey.sh
# @Date        : 2010-07-26
# @Author      : Taurus Olson
# @Email       : <taurusolson@gmail.com>
# @Last Change : 
# @Revision    : 0.0
# ------------------------------------------------

# iobey.sh is a tiny script that reads an input file and runs it in a shell.
# Give orders, it will obey...

COMMANDS=$*
sh "$COMMANDS"

