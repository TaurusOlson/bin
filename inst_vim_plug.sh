#!/bin/bash
# ------------------------------------------------
# @Filename    : inst_vim_plug.sh
# @Date        : 2010-02-05
# @Author      : Damien RABOIS
# @Email       : <damien.rabois@cesr.fr>
# @Last Change : 
# @Revision    : 0.0
# ------------------------------------------------

ZIP=$1
mv -i $1 ~/.vim/
cd ~/.vim/
unzip $1

