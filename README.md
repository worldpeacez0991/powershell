# Find your large files in MB

## Prerequisites, download both files and place in a new folder;
1. File 'find_largest_file_size.ps1'
2. File 'find_largest_file_size.bat'
3. The directory of the file path to scan, i.e, the directory where you want to find your largest files.

### A. Edit this part in file 'find_largest_file_size.ps1'
$PathToScan="<Your folder path to scan>"
### *** Example ***
$PathToScan="C:\Downloads"

### B. Run File 'find_largest_file_size.bat'

### C. File 'YYYYMMDD_find_largest_file_size.txt' will be generated
Open this file with notepad or any editor to view your largest files in MB for your '$PathToScan'.
