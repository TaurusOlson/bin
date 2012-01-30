#!/bin/bash

# Inspired by http://tammersaleh.com/posts/useful-macvim-script
# but with remote-silent instead of remote-tab-silent because I prefer to
# handle the buffers splitting my window rather than use tab.

if [ $# == 0 ]; then
  mvim
else
  mvim --servername $(basename $(pwd)) \
       --remote-silent "$@" 1>/dev/null 2>&1
fi
