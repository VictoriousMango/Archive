@echo off
set file=Test.xlsx
for /f "tokens=*" %%A in (%file%) do (echo %%A)
for /f "tokens=2" %%A in (%file%) do (echo %%A)
for /f "tokens=3" %%A in (%file%) do (echo %%A)
