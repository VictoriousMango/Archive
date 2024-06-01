@echo off
goto :Main

:GroupCreation
echo Inside the function Group Creation to create %~1.
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
if defined csvName ( call :GroupCreation %csvName% ) else ( echo Parameter is not Defined.)
Rem call :GroupCreation csvName