@echo off
set file=Links.csv
for /f "tokens=*" %%A in (%file%) do (start %%A)