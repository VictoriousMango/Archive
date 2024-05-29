@echo off
set file=./Files/Links.csv
for /f "tokens=*" %%A in (%file%) do (start %%A)