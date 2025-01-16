@echo off
setlocal enabledelayedexpansion

:: Set the folder path where files will be processed.
:: Update "C:\Your\Folder\Path" with the desired directory.
set "folder=C:\Your\Folder\Path"

:: Set the path for the output CSV file.
:: Update "C:\Your\Output\FileList.csv" with the desired output location.
set "output=C:\Your\Output\FileList.csv"

:: Write the header line to the CSV file.
:: This creates the file and adds "File Name" and "Last Modified" as column headers.
echo File Name,Last Modified > "%output%"

:: Loop through all files in the specified folder and its subfolders.
:: The /R flag enables recursive traversal through subdirectories.
for /R "%folder%" %%f in (*) do (

    :: Get the last modified date and time of the current file.
    :: The `%%~ta` syntax extracts the timestamp of the file.
    for %%a in (%%f) do set "modified=%%~ta"

    :: Append the file name and last modified date to the output CSV file.
    :: `%%~nxf` gets the file name with its extension.
    echo %%~nxf,!modified! >> "%output%"
)

:: Notify the user that the script has finished executing.
echo File names and last modified dates have been written to "%output%"

:: Pause the script to allow the user to see the output message before the window closes.
pause
