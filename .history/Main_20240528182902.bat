@echo off
echo "Hello World!!!"
set numbers=5+5
set /p n1=Enter First Values:
set /p n2=Enter Second Value:

set /a add=n1+n2

echo "Numbers : " %numbers%
echo "Addition : " %add% 