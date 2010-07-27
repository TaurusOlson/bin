#!/bin/bash

# ----------------------------------------------------------------------------
# up.sh -- created 2010-06-21, Taurus Olson
# @Description:
# @Last Change: Mar jul 27 11:00  2010 C
# @Revision:    0.1
# ----------------------------------------------------------------------------


echo `uptime | awk -F , '{print $1}' | awk -F up  '{print $2}'`
