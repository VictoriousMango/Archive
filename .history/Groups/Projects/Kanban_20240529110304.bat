@echo off
cd ..
cd ..
set file=./Files/Placement.csv
for /f "tokens=2" %%A in (%file%) do (
    start %%A
    set a=Press Enter to Complete the Given Task
    )