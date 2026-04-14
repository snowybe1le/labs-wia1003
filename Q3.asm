; Question 3:
; Prompt user for three 32-bit integers,
; store in array, calculate sum, display result


INCLUDE Irvine32.inc  

.data  
input SDWORD ?,?,?          
question BYTE "Enter 32-bit integer : ",0    
answer BYTE "The sum of 32-bit integers is : ",0 

.code  
main PROC   
    mov ecx, LENGTHOF input        
    mov edi, OFFSET input         

Loop1:  
    mov edx, OFFSET question   
    call WriteString        
    call ReadInt          
    mov [edi], eax        
    add edi, TYPE input         
    loop Loop1   

    mov eax, 0           
    mov ecx, LENGTHOF input        
    mov edi, OFFSET input        

Loop2:  
    add eax, [edi]          
    add edi, TYPE input  
    loop Loop2  

    mov edx, OFFSET answer  
    call WriteString           
    call WriteInt           
    call Crlf  

    exit  

main ENDP  
END main
