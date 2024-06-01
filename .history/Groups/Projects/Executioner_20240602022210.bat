@echo off
goto :Main

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
:groupNaming
set /p csvName=Enter the name of the Group:
if defined csvName ( call :GroupCreation %csvName% ) else ( goto :groupNaming)

Rem Closing Terminal Application.
EXIT /B 0