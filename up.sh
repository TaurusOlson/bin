#!/bin/bash

# ----------------------------------------------------------------------------
# up.sh -- created 2010-06-21, Damien RABOIS
# @Description:
# @Last Change: Mon Jun 21 09:00 PM 2010 CEST
# @Revision:    0.0
# ----------------------------------------------------------------------------


echo `uptime | awk -F , '{print $1}' | awk -F up  '{print $2}'`
