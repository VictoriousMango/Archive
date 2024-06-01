@echo off
goto :Main

:GroupCreation
echo Inside the function Group Creation.
IF [%1] == [] ( GOTO :Main )
echo inside Group Creations
EXIT /B 0

:LoopingThroughGroups
echo Looping Through Tasks
Exit /B 0

Rem Main Funtion which will run first and all the functions that is to be called, will be defined above.
:Main
echo inside main
set /p csvName=Enter the name of the Group: 
call :GroupCreation csvName