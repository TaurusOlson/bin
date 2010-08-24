#!/usr/bin/python


# ----------------------------------------------------------------------------
# Filename   : note.py
# Created    : 2010-08-24
# Description: 
# Author     : Taurus Olson <<taurusolson@gmail.com>>
# Last Change:
# Version    : 
# TODO       : Continue the script...
# ----------------------------------------------------------------------------

import sys, os


PROJECTS_DIR = os.getenv('HOME') + "/Documents/Outlines/Projects"
EXCLUDED     = ('README')

if len(sys.argv) == 1:
    for project in os.listdir(PROJECTS_DIR):
        if project not in EXCLUDED:
            print project

entry = None
# Edit an existing project
if len(sys.argv) == 2 and os.path.exists(os.path.join(PROJECTS_DIR, sys.argv[1])):
    while entry != 'exit' or entry != 'quit':
        entry = raw_input(":")
        if entry == 'exit' or entry == 'quit':
            break

# Edit a new project
elif len(sys.argv) == 2 and not os.path.exists(os.path.join(PROJECTS_DIR, sys.argv[1])):
    print "%s is about to be created." % sys.argv[1]
    while entry != 'exit' or entry != 'quit':
        entry = raw_input(":")
        if entry == 'exit' or entry == 'quit':
            break
