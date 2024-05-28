@echo off
set x = 5
for /l %%i in (1, 1, %x%) do(
    for /l %%j in (1, 1, %%i) do (echo "*")
)