@echo off
set file=Link.csv
for /f "tokens=*" %%A in (%file%) do (echo %%A)