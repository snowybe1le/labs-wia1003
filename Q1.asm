;
; Question 1:
; Write a program with indexed addressing that calculates the sum 
; of all the gaps between array elements.
; Array: {0,2,5,9,10}
; Gaps: 2,3,4,1 → Total = 10


INCLUDE Irvine32.inc  

.data  
arrayOfWord WORD 0,2,5,9,10  

.code  
main PROC  
    mov eax,0         
    mov ebx,0       
    mov edx,0         
    mov edi, OFFSET arrayOfWord     
    mov ecx, LENGTHOF arrayOfWord - 1  

L1:          
    mov ax,[edi]  
    mov bx,[edi+2]  
    sub bx,ax  
    add dx,bx  
    add edi, TYPE arrayOfWord    
    loop L1  

    call DumpRegs  
    exit  

main ENDP  
END main
