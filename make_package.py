#!/usr/bin/python


"""Make a Python package of the given directory

Filename   : make_package.py
Created    : 2010-10-26
Author     : Taurus Olson <taurusolson@gmail.com>
Last Change: Mer fév 16 03:00  2011 C


The standard Python package can contain a __init.py__ file
in which the __all__ may be defined.
This __all__ variable determines which modules are going to be imported when
the following statement is done:

from package import *

The purpose of this script is to provide the __init__.py file with the __all__
variable containing all the modules (python files) in the selected directory.
"""


import os, glob, sys

class InvalidPyDirectoryError(IndexError):
    """Raised when the directory has no python files"""


def get_py_files(path):
    """Returns the list of python files without extension."""
    py_files = glob.glob(path + '/*.py')
    if len(py_files):
        py_files = map(lambda x: os.path.basename(x), py_files)
        py_files = map(lambda x: os.path.splitext(x)[0], py_files)
        return py_files
    else:
        raise InvalidPyDirectoryError("The directory has no python files.")


def write_init(fname, data):
    """Write __init__.py file necessary for the Python package."""
    f = open(fname, 'w')
    f.write("__all__ = %s" % data)
    f.close()


if __name__ == '__main__':
    if len(sys.argv) == 2:
        dirpath = sys.argv[1]
        files = get_py_files(dirpath)
        filename = dirpath + '/__init__.py'
        write_init(filename, files)
        print "__init__.py has been created in %s" % dirpath
    else:
        print "Please type a valid directory path."

