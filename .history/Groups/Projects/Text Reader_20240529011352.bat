@echo off
set file=Test.csv
for /f "tokens=*" %%A in (%file%) do (echo %%A)
for /f "tokens=2" %%A in (%file%) do (
    if %%A equ "Link" echo "Opening Links"
    start %%A
    )
