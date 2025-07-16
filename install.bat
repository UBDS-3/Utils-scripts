@echo off

REM Check if conda is installed
where conda >nul 2>nul
if %errorlevel% neq 0 (
    echo Miniconda not found, installing Miniconda...
    REM Download and install Miniconda for Windows
    curl -sL https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe -o miniconda.exe
    start /wait miniconda.exe /S /D=%USERPROFILE%\Miniconda
    set PATH=%USERPROFILE%\Miniconda\Scripts;%USERPROFILE%\Miniconda;%PATH%
)

REM Create conda environment from environment.yml
echo Creating conda environment...
conda env create -f environment.yml

REM Activate the environment
echo Environment created successfully. Activating the environment...
conda activate myenv

echo Installation completed. You can now use 'conda activate myenv' to activate the environment.

