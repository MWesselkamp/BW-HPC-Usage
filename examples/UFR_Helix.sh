#!/bin/bash
#SBATCH --job-name=numpy_job
#SBATCH --output=output.txt
#SBATCH --error=error.txt
#SBATCH --time=00:10:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G


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