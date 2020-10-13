.586
.model flat,c 
 PUBLIC calc 
.data
    A   dd ?
    C1  dd ?
    D   dd ?
    K01  dd 1.0
    K04  dd 4.0
    K12  dd 12.0
    RES dd ?
.code
    calc proc
    push ebp
    mov ebp,esp
    mov eax,[ebp+8]
    mov A, eax
    mov eax,[ebp+12]
    mov C1, eax
    mov eax,[ebp+16]
    mov D, eax
    finit
    fld C1
    fcomp D
    fstsw ax
    sahf
    jbe els1  ; C<=D 
    fld D
    fmul K04
	fld K01
    FPATAN   ; arctang
    fdiv C1
    fsub K01
    fld K12
    fadd A
    fsub C1
    fdiv
jmp rez
els1:   
    fld C1
	mul K01
	fld K01
    FPATAN
    fld C1
    fmul D
    fadd
    fld A
    fdiv K04
	fsub
    fld A
    fmul D
    fsub K01
    fdiv
rez: pop ebp
ret
calc endp
end
