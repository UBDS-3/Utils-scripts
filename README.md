# Utils-scripts

This repository contains utility scripts for managing libraries, dependencies, and datasets for your project.

## Overview

This project provides the required libraries, dependencies, and datasets to get started quickly. You can set up your development environment by following the platform-specific instructions below.

---

## For Windows Users

If you're running on a **Windows** machine, you will need the following files:

- **`install.bat`** - A batch script to set up the environment.
- **`environment.yml`** - A Conda environment configuration file.

### Steps:

1. **Download or Clone the Repository** to your machine.

2. **Install Miniconda (if not already installed)**:
   - Double-click the `install.bat` file to run the script.
   - The script will:
     - Check if **Miniconda** is installed.
     - If not, it will install **Miniconda**.
     - Create the environment based on the **`environment.yml`** file.
     - Automatically activate the environment.

3. **Alternatively, you can run the script from the command prompt**:
   - Open Command Prompt and navigate to the directory where `install.bat` is located.
   - Run the script:
     ```bash
     install.bat
     ```

---

## For Linux Users

If you're running on a **Linux** machine, you will need the following files:

- **`install.sh`** - A shell script to set up the environment.
- **`environment.yml`** - A Conda environment configuration file.

### Steps:

1. **Download or Clone the Repository** to your machine.

2. **Make the script executable**:
   - Open a terminal and navigate to the directory where `install.sh` is located.
   - Run the following command to make the script executable:
     ```bash
     chmod +x install.sh
     ```

3. **Run the script**:
   - Once the script is executable, run it:
     ```bash
     ./install.sh
     ```
   - The script will:
     - Check if **Miniconda** is installed.
     - If not, it will install **Miniconda**.
     - Create the environment based on the **`environment.yml`** file.
     - Automatically activate the environment.

---

## Common Setup for Both Platforms

### `environment.yml`

The **`environment.yml`** file contains all the dependencies required for this project, including Python libraries like `tensorflow`, `keras`, `numpy`, `scikit-learn`, and more. This file is used to create the Conda environment.

To create the environment manually from the `environment.yml` file (if you don't want to use the provided script):

1. **Install Conda** (if not installed already):
   - Follow instructions on the [official Miniconda website](https://docs.conda.io/en/latest/miniconda.html).

2. **Create the environment**:
   ```bash
   conda env create -f environment.yml
