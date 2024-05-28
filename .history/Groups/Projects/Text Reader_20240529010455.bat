@echo off
set file=Test.csv
for /f "tokens=*" %%A in (%file%) do (echo %%A)