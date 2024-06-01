@echo off
goto :Main

:GroupCreation
if defined %~1 ( echo "Inside If" ) else ( echo Inside Else)
if defined %~1 echo Inside If
EXIT /B 0

:LoopingThroughGroups
echo Looping Through Tasks
Exit /B 0

:NoParameterFound
echo No Parameters were found.
Exit /B 0
Rem Main Funtion which will run first and all the functions that is to be called, will be defined above.
:Main
echo inside main
set /p csvName=Enter the name of the Group: 
call :GroupCreation %csvName%