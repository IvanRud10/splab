.586
.model flat, c

EXTRN A:SDWORD, B:SDWORD, C1:SDWORD, D:SDWORD, E:SDWORD
PUBLIC calc

.data
 K  dq  1164533775.0

.code 
calc PROC
push ebp 
mov ebp,esp

 finit
 fld B
 fmul C1
 fadd K
 fadd A
 fld D
 fdiv E
 fsub

pop ebp
ret 
calc ENDP 
END
