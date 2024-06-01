@echo off
goto :Main

:GroupCreation
EXIT /B 0

:LoopingThroughGroups
echo Looping Through Tasks
Exit /B 0

:NoParameterFound
echo No Parameters were found for %~1
Exit /B 0
Rem Main Funtion which will run first and all the functions that is to be called, will be defined above.

:Main
echo inside main
set /p csvName=Enter the name of the Group: 

if 1 equ 1 ( echo inside If ) else ( echo inside else)