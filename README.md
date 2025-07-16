Utils-scripts
This repository contains utility scripts for managing libraries, dependencies, and datasets for your project.

Overview
This project provides the required libraries, dependencies, and datasets to get started quickly. You can set up your development environment by following the platform-specific instructions below.

For Windows Users
If you're running on a Windows machine, you will need the following files:

install.bat - A batch script to set up the environment.

environment.yml - A Conda environment configuration file.

Steps:
Download or Clone the Repository to your machine.

Install Miniconda (if not already installed):

Double-click the install.bat file to run the script.

The script will:

Check if Miniconda is installed.

If not, it will install Miniconda.

Create the environment based on the environment.yml file.

Automatically activate the environment.

Alternatively, you can run the script from the command prompt:

Open Command Prompt and navigate to the directory where install.bat is located.

Run the script:

bash
Copy
install.bat
For Linux Users
If you're running on a Linux machine, you will need the following files:

install.sh - A shell script to set up the environment.

environment.yml - A Conda environment configuration file.

Steps:
Download or Clone the Repository to your machine.

Make the script executable:

Open a terminal and navigate to the directory where install.sh is located.

Run the following command to make the script executable:

bash
Copy
chmod +x install.sh
Run the script:

Once the script is executable, run it:

bash
Copy
./install.sh
The script will:

Check if Miniconda is installed.

If not, it will install Miniconda.

Create the environment based on the environment.yml file.

Automatically activate the environment.

Common Setup for Both Platforms
environment.yml
The environment.yml file contains all the dependencies required for this project, including Python libraries like tensorflow, keras, numpy, scikit-learn, and more. This file is used to create the Conda environment.

To create the environment manually from the environment.yml file (if you don't want to use the provided script):

Install Conda (if not installed already):

Follow instructions on the official Miniconda website.

Create the environment:

bash
Copy
conda env create -f environment.yml
Activate the environment:

bash
Copy
conda activate myenv
Additional Notes
Miniconda: If you don’t have Miniconda installed, the script will install it for you. If you already have Conda installed (e.g., Anaconda), the script will skip this step.

Custom Environment Name: You can modify the environment name in the environment.yml file by editing the name field.

Running the Script Multiple Times: If you need to reset or recreate the environment, you can always run the script again, or manually remove the environment with:

bash
Copy
conda env remove -n myenv
Troubleshooting
If you encounter issues with package installation, you can manually install missing packages using Conda or Pip. For example:

bash
Copy
conda install <package-name>
or

bash
Copy
pip install <package-name>
If the script doesn't work as expected, check the terminal or command prompt for error messages and verify that Miniconda is correctly installed.
