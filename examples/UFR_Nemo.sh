#!/bin/bash
#MOAB -N numpy_job # job name
#MOAB -o output.txt # output file
#MOAB -e error.txt # error file
#MOAB -l walltime=00:10:00 # runtime
#MOAB -l nodes=1:ppn=1 # 1 node, 1 core
#MOAB -l mem=1G #memory request

# Install numpy
pip3 install numpy

# Create a Python script
echo "
import numpy as np

# Create an array
array = np.array([1, 2, 3, 4, 5])

# Print the array
print('Array:', array)
" > script.py

# Run the Python script
python3 script.py