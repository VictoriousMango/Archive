@echo off
set file=Test.csv
for /f "tokens=1" %%A in (%file%) do (echo %%A)
for /f "tokens=2" %%A in (%file%) do (echo %%A)
for /f "tokens=3" %%A in (%file%) do (echo %%A)
