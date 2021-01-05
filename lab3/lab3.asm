.586
.model flat, c

PUBLIC calc

.data
 K  dq  1164533775.0   ;4569600Fh

.code 
calc PROC
push ebp 
mov ebp,esp

 finit
 fld dword ptr [ebp+16]
 fmul qword ptr [ebp+20]
 fadd qword ptr [ebp+8]
 fadd K
 fld qword ptr [ebp+28]
 fdiv qword ptr [ebp+36]
 fsub


pop ebp
ret 
calc ENDP 
END
