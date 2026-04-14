; Question 2:
; Generate a sequence using number = 8
; Output:
; 1 2 3 4 5 6 7 8
; 2 3 4 5 6 7 8
; ...
; 8


INCLUDE Irvine32.inc  

.data  
number DWORD 8  

.code  
main PROC  
    mov ebx, 1 
    mov ecx, ebx 

Func1:  
    cmp ebx, number  
    jg Func3  

    mov eax, ecx  
    call WriteDec  
    inc ecx  

    cmp eax, number  
    jl Func1  
    je Func2  

Func2:  
    call Crlf 
    inc ebx  
    mov ecx, ebx  
    jmp Func1  

Func3:  
    exit  

main ENDP 
END main
