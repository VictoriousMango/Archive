
cd ..
cd ..
set file=./Files/Placement.csv
for /f "tokens=2" %%A in (%file%) do (
    start %%A
    start ./Files/Kanban.py
    pause
    )