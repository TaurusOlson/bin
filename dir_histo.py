#!/usr/bin/python
# dir_histo.py -- Viusalisation of the histogram of the files present in the current directory
# @Author:      Damien RABOIS (<+EMAIL+>)
# @Website:     <+WWW+>
# @License:     GPL (see http://www.gnu.org/licenses/gpl.txt)
# @Created:     2009-09-20.
# @Revision:    0.0
#
# = Description
# = Usage
# = TODO
# = CHANGES


import os

# Functions
def removeSpaces(ext):
    """docstring for removeSpaces"""
    # ext is a list of extensions with spaces unnecessary
    extens = []
    for i in ext:
        if i !="" and i !=".DS_Store":
            extens.append(i)
    return extens
                    
def drawHisto(ext, nb, symbol="#"):
    """docstring for drawHisto"""
    total = 0
    print ext + "\t\t: ", nb, "\t\t",
    while total < nb:
        print symbol,
        total += 1
    return ""

        
# Variables
current_dir = os.getcwd()
listing = os.listdir(current_dir)

# Path + filename
files = [current_dir+f for f in listing]


ext = 0
extensions = []
while ext<len(files):
    extension = os.path.splitext(files[ext])[1]
    #print extension
    extensions.append(extension)
    ext=ext+1

# Removing the white spaces
extens = removeSpaces(extensions)

ext_dict = {}
for i in extens:
    ext_nb = 0
    for j in extens:
        if j == i:
            ext_nb += 1
    ext_dict[i] = ext_nb

# Drawing the histogram
for ext,nb in ext_dict.iteritems():
    print "%s" %(drawHisto(ext,nb,"#"))



    
