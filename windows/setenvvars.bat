@echo off
setlocal

:: Check if the file path is provided as a command line argument
if "%~1"=="" (
    echo Usage: %0 path_to_file
    exit /b 1
)

:: Check if the file exists
if not exist "%~1" (
    echo File not found: %~1
    exit /b 1
)

:: Read the file and set environment variables
for /f "tokens=1* delims==" %%a in (%~1) do (
    set %%a=%%b
)

:: Optional: Display all environment variables
set

:: Keep the window open to check variables (for testing purposes)
pause

:: Your commands that use the environment variables should go here

endlocal
