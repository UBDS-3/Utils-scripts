#!/bin/bash

# Check if conda is installed
if ! command -v conda &> /dev/null
then
    echo "Miniconda or Anaconda not found. Installing Miniconda..."
    # Install Miniconda if not already installed
    curl -sL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh
    bash miniconda.sh -b -f -p $HOME/miniconda
    export PATH="$HOME/miniconda/bin:$PATH"
fi

# Create conda environment from environment.yml
echo "Creating conda environment..."
conda env create -f environment.yml

# Activate environment
echo "Environment created successfully. Activating the environment..."
conda activate myenv

echo "Installation completed. You can now use 'conda activate myenv' to activate the environment."

