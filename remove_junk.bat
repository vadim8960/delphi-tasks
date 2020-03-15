@echo off

for /d %%B in (C:\Users\akimo\Desktop\delphi-tasks\*) do (
cd %%B
del "*.~*" 2>C:\Users\akimo\Desktop\delphi-tasks\tmp.txt
)

del "C:\Users\akimo\Desktop\delphi-tasks\tmp.txt"