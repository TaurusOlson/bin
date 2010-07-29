#!/usr/bin/env python
# -*- coding: utf-8 -*-

version=0.1
# v 0.1: First release

import sys

args = len(sys.argv) - 1

sum = 0
for i in sys.argv:
    if i != sys.argv[0]:
        sum = float(sum) + float(i)


print "%f" %( (sum)/args )
