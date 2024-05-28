@echo off
set file=Test.csv
for /f "tokens=First" %%A in (%file%) do (echo %%A)