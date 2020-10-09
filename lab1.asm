.586

.model flat, stdcall
option casemap: none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
include \masm32\include\debug.inc
include \masm32\include\user32.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\debug.lib
includelib \masm32\lib\user32.lib

.data
Arr dd -2,-1,-1,1,6,4,7
Suma dd 00h
.code
start:
mov ecx,7

chck:
mov eax,[Arr+ecx*4-4]
dec ecx
cmp eax, 0
jge chck
add Suma, eax
cmp ecx, 0
je xt
jmp chck

xt:
PrintDec Suma,"Suma of negative numbers"
invoke ExitProcess,NULL
end start
