# `dir2csv.bat`

## Overview
`dir2csv.bat` is a batch script designed to list all file names and their last modified dates within a specified folder (including its subfolders) and save the information into a CSV file. The generated CSV file can be easily opened and manipulated in Excel or other spreadsheet programs.

---

## Features
- **Recursive File Listing**: Includes all files from the specified folder and its subdirectories.
- **Metadata Extraction**: Outputs both the file name and its last modified timestamp.
- **CSV Output**: Creates a structured file that is compatible with Excel.

---

## How to Use
### 1. Preparation
1. Place the `dir2csv.bat` file in a folder or directory of your choice.
2. Open the script in a text editor (e.g., Notepad) to update the following paths:
   - **`folder`**: The root folder to scan for files.
   - **`output`**: The path where the resulting CSV file will be saved.

### 2. Running the Script
1. Double-click the `dir2csv.bat` file to execute it.
2. The script will process the folder and its subfolders, creating a CSV file at the specified output location.
3. Once completed, the script will display a confirmation message and pause, allowing you to view the output.

---

## Output Format
The resulting CSV file includes the following columns:
1. **File Name**: Name of the file (with extension).
2. **Last Modified**: Timestamp of when the file was last modified.

Example:
```
File Name,Last Modified
example.txt,2025-01-15 10:23 AM
data.xlsx,2025-01-14 3:45 PM
```

---

## Customization
- **Change Folder Path**: Modify the `set "folder=..."` line to target a different directory.
- **Change Output File Path**: Update the `set "output=..."` line to specify a new save location for the CSV file.
- **File Extensions**: By default, the script processes all files. To limit this, modify the `for /R` line (e.g., `for /R "%folder%" %%f in (*.txt) do` to include only `.txt` files).

---

## Troubleshooting
- **No Output**: Ensure the folder path and output file path are correct and accessible.
- **Permission Denied**: Run the script with administrative privileges if access is restricted.
- **Wrong Timestamp Format**: The script uses your system’s date and time format. Check your system settings if the output looks incorrect.

---

## License
This script is open-source and can be modified or redistributed for personal or professional use. Attribution is appreciated but not required.

---
