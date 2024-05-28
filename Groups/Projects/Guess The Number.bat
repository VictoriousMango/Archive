@echo off
echo "Welcome to the Guess the Number Game!!!"

:start
set /p num=Guess the Number: 

if %num% equ 55 goto end
if %num% lss 55 echo Too Low!!!  
if %num% gtr 55 echo Too High!!!
goto start

:end
echo You Win !!!
pause