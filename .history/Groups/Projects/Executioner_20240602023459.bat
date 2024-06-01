@echo off
goto :Main

:GroupList
SETLOCAL
cd Group
dir *.csv
ENDLOCAL
EXIT /B 0

:GroupCreation
echo New Group > ./Group/%~1.csv
EXIT /B 0

:GroupReading

EXIT /B 0

:GroupUpdating
EXIT /B 0

:GroupDeletion
EXIT /B 0

:NoParameterFound
echo No Parameters were found for %~1
Exit /B 0
Rem Main Funtion which will run first and all the functions that is to be called, will be defined above.

:Main
if exist ./Group ( echo Contected to Group Folder.) else ( mkdir Group)
cls
call :GroupList

echo 1. Create new Group
echo 2. Start Executing the Group
echo 3. Update a Group
echo 4. Delete a Group

set /p choice=Enter a Choice: 
if defined choice (
    if %choice%==1 ( 
        call :GroupCreation
    ) else if %choice%==2 (
        call :GroupReading
    ) else if %choice%==3 (
        call :GroupUpdating
    ) else if %choice%==4 (
        call :GroupDeletion
    ) else ( goto :Main )
) else ( goto :Main )
:groupNaming
set /p csvName=Enter the name of the Group:
if defined csvName ( call :GroupCreation %csvName% ) else ( goto :groupNaming)


