@echo off
set appname=simple

cd build

del %appname%.obj
del %appname%.exe

\masm32\bin64\ml64.exe /c ../src\%appname%.asm
\masm32\bin64\link.exe /SUBSYSTEM:CONSOLE /MACHINE:X64 /nologo /LARGEADDRESSAWARE %appname%.obj

cd ..