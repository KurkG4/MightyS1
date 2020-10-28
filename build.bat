@echo off
asm68k /q /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- sonic1.asm, mightyS1.bin
rem rompad.exe mightyS1.bin 255 0
fixheadr.exe mightyS1.bin
pause