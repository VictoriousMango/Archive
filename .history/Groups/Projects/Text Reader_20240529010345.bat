@echo off
set file=Text.csv
for /f "tokens=*" %%A in (%file%) do (echo %%A)