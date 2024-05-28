@echo off
set file=Test.csv
for /f "tokens=2" %%A in (%file%) do (echo %%A)