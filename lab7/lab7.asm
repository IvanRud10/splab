.586
.model flat, stdcall
option casemap:none

include D:\\masm32\include\kernel32.inc
include D:\masm32\include\user32.inc
include D:\masm32\include\masm32.inc
include D:\masm32\include\debug.inc
include D:\masm32\macros\macros.asm
includelib D:\masm32\lib\kernel32.lib
includelib D:\masm32\lib\masm32.lib
includelib D:\masm32\lib\debug.lib
includelib C:\Users\Іван\Source\Repos\lab7spdll\Debug\lab7spdll.lib

.data
	LibName db "lab7spdll.dll",0
	FunctionName db "SumofNumber",0
	DllNotFound db "Cannot load library",0
	AppName db "Load explisit Library",0
	NotFound db "SumofNumber function not found",0
    buflen dd 50
	sum dd 0
	user_txt db 50 dup (0)
	user_letter db 50 dup (0)
	new_line db 13,10,0
	output_text db 'Sum = ',0
	input_text db 'Enter text: ',0
	input_letter db 'Enter letter: ',0

	.data?
	hLib dd ?
	SumofNumberAddr dd ?

  .code
start:
push offset input_text
call StdOut

push buflen
push offset user_txt
call StdIn

push offset input_letter
call StdOut

push buflen
push offset user_letter
call StdIn

push offset LibName
call LoadLibrary	
	cmp eax, 0
	jne _ne
	push 0
	push offset AppName
	push offset DllNotFound
	push 0
	call MessageBox
	_ne:
		mov hLib,eax				
		
		push offset FunctionName
		push hLib
		call GetProcAddress
		
		cmp eax,0
		jne _ne1			
		push 0
		push offset AppName
		push offset NotFound
		call MessageBox
			

_ne1:
push offset user_letter
push offset user_txt
mov SumofNumberAddr, eax
call [SumofNumberAddr]	

		push hLib
		call FreeLibrary

push offset output_text
call StdOut
print str$(ebx)
push offset new_line
call StdOut

push 0
call ExitProcess
end start
