@echo off
cd ..
cd ..
set file=./Files/Placement.csv
python ./Files/KanbanReset.py

for /f "tokens=2" %%A in (%file%) do (
    cls
    start %%A
    python ./Files/Kanban.py
    pause
    )
python ./Files/Kanban.py