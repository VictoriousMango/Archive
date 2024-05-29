@echo off
set file=./Filles/Links.csv
for /f "tokens=*" %%A in (%file%) do (start %%A)