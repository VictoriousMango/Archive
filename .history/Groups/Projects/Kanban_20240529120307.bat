@echo off
cd ..
cd ..
set file=./Files/Placement.csv
python ./Files/KanbanReset.py
for /f "tokens=2" %%A in (%file%) do (
    python ./Files/Kanban.py
    start %%A
    pause
    )