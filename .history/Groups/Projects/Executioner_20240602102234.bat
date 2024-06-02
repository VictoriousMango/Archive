@echo off
goto :Main

:GroupList
SETLOCAL
cd Group
dir *.csv
ENDLOCAL
EXIT /B 0

:pythonReader
python
print("Hello World")
EXIT /B 0

:GroupCreation
    set /p csvName=Enter the name of the Group:
    if defined csvName ( 
        echo New Group > ./Group/%csvName%.csv
    ) else ( 
        echo Please enter the name
        pause
    )
EXIT /B 0

:GroupExecution
call :pythonReader
EXIT /B 0

:GroupUpdating
    set /p csvName=Enter the name of the Group to Update:
    if defined csvName ( 
        if exist ./Group/%csvName%.csv ( notepad ./Group/%csvName%.csv ) else ( echo File Does not exist!!! )
    ) else ( 
        echo Please enter the name
        pause
    )
EXIT /B 0

:GroupDeletion
    SETLOCAL 
    cd Group
    set /p csvName=Enter the name of the Group to Delete:
    if defined csvName ( 
        Del %csvName%.csv
    ) else ( 
        echo Please enter the name
        pause
        goto :Main
    )
    ENDLOCAL
EXIT /B 0


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
        call :GroupExecution
    ) else if %choice%==3 (
        call :GroupUpdating
    ) else if %choice%==4 (
        call :GroupDeletion
    ) else ( goto :Main )
) else ( goto :Main )

set /p again=Satisfied (Y,N)? 
if %again% equ N ( goto :Main )