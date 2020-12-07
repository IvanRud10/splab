.model flat,stdcall
option casemap: none
.data
sum dd 10
.code
DllEntry proc hInstDLLL:DWORD, reason:DWORD, reserved:DWORD
mov eax, 1
ret
DllEntry endp

SumofNumber PROC txt:DWORD, letter:DWORD
mov ebx, txt
mov edx, letter
mov esi, 0
mov ecx, 0

mov dl, [edx]
_cycle:
cmp esi, 49
je _exit
mov al, [ebx+esi]
cmp al, dl
je _acc
inc ecx
inc esi
jne _cycle

_acc: 
add sum, ecx
inc ecx
inc esi
jmp _cycle

_exit:
mov ebx, sum
ret
SumofNumber endp
end DllEntry