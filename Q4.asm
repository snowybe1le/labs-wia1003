; =========================================
; Question 4:
; Create a procedure that receives marks (0–100)
; and displays grade:
; 90–100 → A
; 80–89  → B
; 70–79  → C
; 60–69  → D
; 0–59   → F
; =========================================

INCLUDE Irvine32.inc  

.data  
num SDWORD ?  
ques BYTE "Enter mark (0-100) : ",0   
output BYTE "Grade : ",0  

.code  

Input PROC  
F1:  
    mov edx, OFFSET ques   
    call WriteString   
    call ReadInt     
    mov num, eax  

    cmp eax, 100  
    jg F1      
    cmp eax, 0  
    jl F1  

    call Crlf  
    mov edx, OFFSET output   
    call WriteString        

F2:  
    mov eax, num   

    cmp eax, 60     
    jl PrintFGrade  

    cmp eax, 70  
    jl PrintDGrade  

    cmp eax, 80  
    jl PrintCGrade  

    cmp eax, 90  
    jl PrintBGrade  

    jmp PrintAGrade  

PrintAGrade:     
    mov al,'A'  
    call WriteChar  
    call Crlf  
    ret  

PrintBGrade:  
    mov al,'B'  
    call WriteChar  
    call Crlf  
    ret  

PrintCGrade:  
    mov al,'C'  
    call WriteChar  
    call Crlf  
    ret  

PrintDGrade:  
    mov al,'D'  
    call WriteChar  
    call Crlf  
    ret  

PrintFGrade:  
    mov al,'F'  
    call WriteChar  
    call Crlf  
    ret  

Input ENDP  

main PROC  
    call Input  
    exit  
main ENDP  

END main
