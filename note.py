#!/usr/bin/python


# ----------------------------------------------------------------------------
# Filename   : note.py
# Created    : 2010-08-24
# Description: 
# Author     : Damien RABOIS <<damien.rabois@cesr.fr>>
# Last Change:
# Version    : 
# ----------------------------------------------------------------------------

import sys, os

PROJECTS_DIR = "/Users/drabois/Documents/Outlines/Projects"
EXCLUDED     = ('README')

if len(sys.argv) == 1:
    for project in os.listdir(PROJECTS_DIR):
        if project not in EXCLUDED:
            print project

entry = None
if len(sys.argv) == 2 and os.path.exists(os.path.join(PROJECTS_DIR, sys.argv[1])):
    print "OK"
