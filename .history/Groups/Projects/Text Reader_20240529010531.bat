@echo off
set file=Test.csv
for /f "tokens=1" %%A in (%file%) do (echo %%A)