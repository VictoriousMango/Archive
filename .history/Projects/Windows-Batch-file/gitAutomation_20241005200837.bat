@echo off
REM Set local git username and password
set /p username=Enter Git Username: 
set /p password=Enter Git Password: 

REM Change directory to the subfolder where the git commands need to be executed
cd "path\to\your\subfolder"

REM Set Git user configuration locally for this repository
git config user.name "%username%"
git config user.password "%password%"

REM Get the commit message from user input
set /p commitMessage=Enter commit message: 

REM Perform git operations
git add .
git commit -m "%commitMessage%"
git pull
git push

REM Notify the user that the operations have completed
echo Git operations completed.

pause
