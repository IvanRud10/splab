.586
.model flat, c

EXTRN A:QWORD, B:DWORD, C1:QWORD, D:QWORD, E:QWORD
PUBLIC calc

.data
 K  dq  1164533775.0
 ;K  dq  4569600Fh

.code 
calc PROC
push ebp 
mov ebp,esp

 finit
 fld B
 fmul C1
 fadd A
 fadd K
 fld D
 fdiv E
 fsub


pop ebp
ret 
calc ENDP 
END
