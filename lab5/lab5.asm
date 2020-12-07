.586
.model flat, STDCALL
option casemap :none

include \masm32\include\windows.inc
include \masm32\macros\macros.asm
;include macros.asm
include \masm32\include\masm32.inc
include \masm32\include\gdi32.inc
include \masm32\include\user32.inc
include \masm32\include\kernel32.inc
include \masm32\include\Advapi32.inc
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\gdi32.lib
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\Advapi32.lib

.data
lpszPath db 'C:\Users\Іван\Source\Repos\Ivan.txt '
lenght db 0
buflen dd 256
path_title db 'Lab 5', 0
path_message db 'ShortPathName...: '
path_name db 256 dup (0)

.code
Start:
push offset buflen
push offset path_name
push offset lenght
push offset lpszPath
call GetShortPathNameA
push 40h
push offset path_title
push offset path_message
push 0
call MessageBoxA
push 0
call ExitProcess
end Start
