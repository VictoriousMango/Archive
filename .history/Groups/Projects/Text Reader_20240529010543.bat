@echo off
set file=Test.csv
for /f "tokens=3" %%A in (%file%) do (echo %%A)