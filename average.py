#!/usr/bin/env python

#--------------------------------------------------------
# Author        : Taurus Olson
# Description   : Print the average of the input numbers
#
# Usage: 
# average.py x1 x2 x3 ...
#
# average.py <Enter>
# Then type the values of x_i
#
# average.py `awk '{print $1}' file.dat`
#--------------------------------------------------------

import sys

def get_average(x):
    """Return the average of the x_i"""

    sum = 0
    n = len(x) - 1
    for x_i in x:
        if x_i != x[0]:
            sum = float(sum) + float(x_i)

    return sum/n 

if len(sys.argv) > 1:
    print "%f" % get_average(sys.argv)
else:
    x_i = raw_input('Enter the x_i: ')
    a = ['']
    a.extend(list(x_i.split(' ')))
    print "%f" % get_average(a)

