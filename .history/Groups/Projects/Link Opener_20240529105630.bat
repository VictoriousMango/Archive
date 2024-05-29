@echo off
set file=./Files/Placement.csv
for /f "tokens=*" %%A in (%file%) do (start %%A)