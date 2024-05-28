@echo off
set file=Test.csv
for /f  %%A in (%file%) do (echo %%A)