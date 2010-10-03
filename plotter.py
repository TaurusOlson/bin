#!/opt/local/bin/python

import pylab, numpy, sys

inputs = []

if sys.argv: inputs.extend(sys.argv[1:])

xarray = map(lambda i: inputs[2*i], range(len(inputs) / 2))
yarray = map(lambda i: inputs[2*i + 1], range(len(inputs) / 2))
xarray = numpy.array(xarray)
yarray = numpy.array(yarray)

pylab.plot(xarray, yarray)
pylab.show()

# Usage:
# plotter.py `gen_gauss.py`
