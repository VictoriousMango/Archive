@echo off
goto :Main

:GroupCreation
echo Inside the function Group Creation.
if %~2 ( echo Something! )
EXIT /B 0

:LoopingThroughGroups
echo Looping Through Tasks
Exit /B 0

Rem Main Funtion which will run first and all the functions that is to be called, will be defined above.
:Main
echo Inside the main Function.

set /p csvName=Enter the name of the Group: 
echo %csvName%