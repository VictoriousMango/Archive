@echo off
echo "Hello World!!!"

set /p n1=Enter First Values:
set /p n2=Enter Second Value:

set numbers=n1+n2
set /a add=n1+n2

echo "Numbers : " %numbers%
echo "Addition : " %add% 