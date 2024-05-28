@echo off
set file=Test.md
echo Hello, World, 123!!!!>%file%
:start
set count=0
echo %count%>>%file%
set count=%count%+1
if %count% lss 5 goto start