@echo off

for /d %%B in (%cd%\*) do (
cd %%B
del "*.~*" 2> %cd%\tmp.txt
)
cd ..
del "%cd%\tmp.txt"