
%%%%%%%%%%%%%%%%%%%%%%%%%% Massage Printing Program %%%%%%%%%%%%%%%%%%%%%%%%%%%
section .data
msg1: db 'Hello World',10
msg1len: equ $-msg1

section .bss
var1: resb 2

section .text
global _start
_start:

mov eax,4
mov ebx,1
mov ecx, msg1
mov edx, msg1len
int 80h;

mov eax,1
mov ebx,0
int 80h;

%%%%%%%%%%%%%%%%%%%%% ASCII importance Program %%%%%%%%%%%%%%%%%%%%%%%%%%%

section .data
msg1: db 'SY1 A-Batch',10
msg1len: equ $-msg1


section .bss
var1: resb 2


section .text
global _start
_start:

mov ebp,65
mov [var1],ebp

mov eax,4
mov ebx,1
mov ecx, var1
mov edx, 2
int 80h;

mov eax,1
mov ebx,0
int 80h;

%%%%%%%%%%%%%%%%%%%%% Single integer Printing Program %%%%%%%%%%%%%%%%%%%%%%%%%%%

section .data
msg1: db 'SY1 A-Batch',10
msg1len: equ $-msg1


section .bss
var1: resb 2

section .text
global _start
_start:

mov ebp,6
add ebp,48

mov [var1],ebp

mov eax,4
mov ebx,1
mov ecx, var1
mov edx, 2
int 80h;

mov eax,1
mov ebx,0
int 80h;

%%%%%%%%%%%%%%%%%%%%% Single integer Printing Program %%%%%%%%%%%%%%%%%%%%%%%%%%%

section .data
msg1: db 'SY1 A-Batch',10
msg1len: equ $-msg1


section .bss
var1: resb 2

section .text
global _start
_start:

mov ebp,6
add ebp,'0'

mov [var1],ebp

mov eax,4
mov ebx,1
mov ecx, var1
mov edx, 2
int 80h;

mov eax,1
mov ebx,0
int 80h;

%%%%%%%%%%%%%%%%%%%%% Data reading Program %%%%%%%%%%%%%%%%%%%%%%%%%%%


section .data
msg1: db 'Enter a number',10
msg1len: equ $-msg1


section .bss
var1: resb 2

section .text
global _start
_start:

mov eax,3
mov ebx,0
mov ecx, var1
mov edx, 2
int 80h;

mov eax,1
mov ebx,0
int 80h;

%%%%%%% Reading Single integer from terminal then Printing Program %%%%%%%%%%%%%%%%%%%%%%

section .data
msg1: db 'Entered number is equal to:',10
msg1len: equ $-msg1


section .bss
var1: resb 2

section .text
global _start
_start:

mov eax,3
mov ebx,0
mov ecx, var1
mov edx, 2
int 80h;

mov eax,[var1]
sub eax,48

add eax,48
mov [var1],eax

mov eax,4
mov ebx,1
mov ecx,msg1
mov edx, msg1len
int 80h;

mov eax,4
mov ebx,1
mov ecx,var1
mov edx, 2
int 80h;

mov eax,1
mov ebx,0
int 80h;


%%%%%%% Reading Single integer from terminal then Printing using Macro Program %%%%%%%%%%%%%%


section .data
msg1: db 'Entered number is equal to:',10
msg1len: equ $-msg1


section .bss
var1: resb 2

%macro rw 4
mov eax,%1
mov ebx,%2
mov ecx,%3
mov edx,%4
int 80h;
%endmacro

section .text
global _start
_start:

;mov eax,3
;mov ebx,0
;mov ecx, var1
;mov edx, 2
;int 80h;
rw 3,0,var1,2


mov eax,[var1]
sub eax,48

add eax,48
mov [var1],eax

;mov eax,4
;mov ebx,1
;mov ecx,msg1
;mov edx, msg1len
;int 80h;
rw 4,1,msg1,msg1len

;mov eax,4
;mov ebx,1
;mov ecx,var1
;mov edx, 2
;int 80h;
rw 4,1,var1,2

mov eax,1
mov ebx,0
int 80h;

%%%%%%% Reading Single integer from terminal then Printing using Macro Program %%%%%%%%%%%%%%

section .data
msg1: db 'Entered number is equal to:',10
msg1len: equ $-msg1


section .bss
var1: resb 2

%macro rw 4
mov eax,%1
mov ebx,%2
mov ecx,%3
mov edx,%4
int 80h;
%endmacro

section .text
global _start
_start:

rw 3,0,var1,2

mov eax,[var1]
sub eax,48

add eax,48
mov [var1],eax

rw 4,1,msg1,msg1len
rw 4,1,var1,2

mov eax,1
mov ebx,0
int 80h;

%%%%%%% Addition of two numbers Program %%%%%%%%%%%%%%

section .data
msg1: db 'Entered the first number:',10
msg1len: equ $-msg1

msg2: db 'Entered the second number:',10
msg2len: equ $-msg2


msg3: db 'The summation of equal to:',10
msg3len: equ $-msg3

section .bss
var1: resb 2
var2: resb 2
sum: resb 2

%macro rw 4
mov eax,%1
mov ebx,%2
mov ecx,%3
mov edx,%4
int 80h;
%endmacro

section .text
global _start
_start:

rw 4,1,msg1,msg1len
rw 3,0,var1,2

rw 4,1,msg2,msg2len
rw 3,0,var2,2

mov eax,[var1]
sub eax,48
mov ebx,[var2]
sub ebx,48

add eax,ebx

add eax,48
mov [sum],eax

rw 4,1,msg3,msg3len
rw 4,1,sum,2

mov eax,1
mov ebx,0
int 80h;

%%%%%%% Subtraction of two numbers Program %%%%%%%%%%%%%%

section .data
msg1: db 'Entered the first number:',10
msg1len: equ $-msg1

msg2: db 'Entered the second number:',10
msg2len: equ $-msg2


msg3: db 'The subtraction result is equal to:',10
msg3len: equ $-msg3

section .bss
var1: resb 2
var2: resb 2
sum: resb 2

%macro rw 4
mov eax,%1
mov ebx,%2
mov ecx,%3
mov edx,%4
int 80h;
%endmacro

section .text
global _start
_start:

rw 4,1,msg1,msg1len
rw 3,0,var1,2

rw 4,1,msg2,msg2len
rw 3,0,var2,2

mov eax,[var1]
sub eax,48
mov ebx,[var2]
sub ebx,48

sub eax,ebx

add eax,48
mov [sum],eax

rw 4,1,msg3,msg3len
rw 4,1,sum,2

mov eax,1
mov ebx,0
int 80h;

%%%%%%%%%%%%%%%%%%%%%%%%%%% Multiplication Program %%%%%%%%%%%%%%%%%%%%%%%%%%%

section .data
msg1: db 'Entered the first number:',10
msg1len: equ $-msg1

msg2: db 'Entered the second number:',10
msg2len: equ $-msg2

msg3: db 'The multiplication result is equal to:',10
msg3len: equ $-msg3

section .bss
var1: resb 2
var2: resb 2
mul: resb 2

%macro rw 4
mov eax,%1
mov ebx,%2
mov ecx,%3
mov edx,%4
int 80h;
%endmacro

section .text
global _start
_start:

rw 4,1,msg1,msg1len
rw 3,0,var1,2

rw 4,1,msg2,msg2len
rw 3,0,var2,2

mov eax,[var1]
sub eax,48
mov ebx,[var2]
sub ebx,48

mul ebx

add eax,48
mov [mul],eax

rw 4,1,msg3,msg3len
rw 4,1,mul,1

mov eax,1
mov ebx,0
int 80h;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Division Program %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

section .data
msg1: db 'Entered the first number:',10
msg1len: equ $-msg1

msg2: db 'Entered the second number:',10
msg2len: equ $-msg2

msg3: db 'The quotient is equal to:',10
msg3len: equ $-msg3

msg4: db 'The remainder is equal to:',10
msg4len: equ $-msg4

section .bss
var1: resb 2
var2: resb 2
quo: resb 2
rem: resb 2

%macro rw 4
mov eax,%1
mov ebx,%2
mov ecx,%3
mov edx,%4
int 80h;
%endmacro

section .text
global _start
_start:

rw 4,1,msg1,msg1len
rw 3,0,var1,2

rw 4,1,msg2,msg2len
rw 3,0,var2,2

mov ax,[var1]
sub ax,48
mov ah,0

mov bl,[var2]
sub bl,48

div bl

add al,48
mov [quo],al

add ah,48
mov [rem],ah

rw 4,1,msg3,msg3len
rw 4,1,quo,2

rw 4,1,msg4,msg4len
rw 4,1,rem,2

mov eax,1
mov ebx,0
int 80h;



%%%%%%%%%%%%%%%%%%%% Printing 12345 %%%%%%%%%%%%%%%%%%%%%%%%%

section .data
msg1: db 'Hello World',10
msg1len: equ $-msg1

section .bss
var1: resb 2


%macro rw 4
mov eax,%1
mov ebx,%2
mov ecx,%3
mov edx,%4
int 80h;
%endmacro

section .text
global _start
_start:

mov ebp,1
add ebp,48
mov [var1],ebp

call num_inc
call num_1
call num_1
call num_1
call num_1

mov eax,1
mov ebx,0
int 80h;

num_inc:
rw 4,1,var1,1
ret

num_1:
inc ebp
mov [var1],ebp
rw 4,1,var1,1
ret


%%%%%%%%%%%%%%%%%%%%%%% Array Addition%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
section .data
	msg db 'Addition is:'
        msglen: equ $-msg
	
	global x	;declaration and initialization of an array
     x: db 1,3,2,2

section .bss
    sum resb 2

section .text
global _start
_start:

	mov esp,4	; Length of an array
	mov ebx,0   ;ebx will store result (Sum)
	mov ecx,x	;eax will point to the current element to be summed
     
    loop_t:
         add ebx,[ecx]
         inc ecx	;move pointer to next element
         dec esp	;decrement counter
         jnz loop_t		;if counter!=0 then loop again
         
         
    add ebx,'0' 
    
    mov [sum],ebx	;result is stored in sum
    
    mov eax,4
    mov ebx,1
    mov ecx,msg
    mov edx,msglen
    int 80h;
    
    mov eax,4	;system call number(sys-Write)
    mov ebx,1	;stdout
    mov ecx,sum	;message to write(value of sum)
    mov edx,1	;message lenght
         
         int 80h;
         
         mov eax,1
         mov ebx,0
         int 80h;


%%%%%%%%%%%%%%%%%%%%%%%% String Concatenation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
section .data
    msg1:     db 'Enter the first name:',10    
    msg1len:  equ $-msg1            

    msg2:     db 'Enter the middle name:',10    
    msg2len:  equ $-msg2            

    msg3:     db 'Enter the last name:',10    
    msg3len:  equ $-msg3            

    msg4:     db 'Full name of the user is:',10    
    msg4len:  equ $-msg4            

section .bss
first resb 10
middle resb 10
last resb 10
fullname resb 30


%macro rw 4
        mov eax,%1         
	mov ebx,%2          
	mov ecx,%3     
	mov edx,%4                        
	int 80h  
%endmacro

section .text
	global _start

_start:
                
    rw 4,1,msg1,msg1len            
    rw 3,0, first,10
  
    rw 4,1,msg2,msg2len            
    rw 3,0, middle,10
  
    rw 4,1,msg3,msg3len            
    rw 3,0, last,10
  
    rw 4,1,msg4,msg4len            
 
    mov edi, fullname
        
    mov esi, first
    up:
    mov al,[esi]
    cmp al,10
    je dn
    mov [edi],al
    inc esi
    inc edi
    jmp up
    
    
    dn:
    mov [edi],byte ' '
    inc edi
    mov esi, middle
    up1:
    mov al,[esi]
    cmp al,10
    je dn1
    mov [edi],al
    inc esi
    inc edi
    jmp up1
    
    dn1:
     mov [edi],byte ' '
    inc edi
    mov esi, last
    up2:
    mov al,[esi]
    cmp al,10
    je dn2
    mov [edi],al
    inc esi
    inc edi
    jmp up2
     
    dn2: rw 4,1,fullname,30

	mov eax,1            
	mov ebx,0            
	int 80h;

%%%%%%%%%%%%%%%%%% Number of characters in string %%%%%%%%%%%%%%%%%%%%%
section .data
    msg1: db "Enter a string: ", 10    ; Null-terminated string
    msg1len:  equ $-msg1
    
    msg2: db "Length of the string is equal to: ", 10    ; Null-terminated string
    msg2len:  equ $-msg2
    
section .bss
    str1 resb 256
   first resb 10

%macro rw 4
        mov eax,%1         
	mov ebx,%2          
	mov ecx,%3     
	mov edx,%4                        
	int 80h;  
%endmacro


section .text
    global _start

_start:
     rw 4,1,msg1,msg1len
     rw 3,0,str1,256

    ; Initialize registers
    xor ecx, ecx                ; Clear ECX (counter for string length)
    mov esi, str1                ; Load the address of the string into ESI (source index)
    
    ; Calculate the string length
count_loop:
    mov al, [esi + ecx]         ; Load the byte at the current position in the string
    cmp al, 0                   ; Check if it's the null terminator (end of string)
    je done                    ; If it is, we are done
    inc ecx                     ; Increment the counter
    jmp count_loop                   ; Repeat the loop

done:
    ; ECX now contains the string length
    ; You can use ECX for further processing or print it

 dec ecx
 add ecx,48
 mov [first],ecx
 rw 4,1,msg2,msg2len
 rw 4,1,first,2

    ; Exit the program
    mov eax, 1                  ; Syscall number for exit
    xor ebx, ebx                ; Exit status (0 for success)
    int 0x80                    ; Invoke syscall


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% String comparison %%%%%%%%%%%%%%%%%%%%%%%%%%%

section .data
    prompt1 db "Enter the first string: ", 0
    prompt1len:  equ $-prompt1  
    
    prompt2 db "Enter the second string: ", 0
    prompt2len:  equ $-prompt2  
    
    equal_msg db "The strings are equal.", 0
    equal_msglen:  equ $-equal_msg  
    
    not_equal_msg db "The strings are not equal.", 0
    not_equal_msglen:  equ $-not_equal_msg  

section .bss
    str1 resb 256   ; Reserve space for the first string
    str2 resb 256   ; Reserve space for the second string

%macro rw 4
        mov eax,%1         
	mov ebx,%2          
	mov ecx,%3     
	mov edx,%4                        
	int 80h;  
%endmacro


section .text
    global _start

_start:
    ; Prompt the user for the first string
    rw 4,1,prompt1,prompt1len

    ; Read the first string
    rw 3,0,str1,256

    ; Prompt the user for the second string
    rw 4,1,prompt2,prompt2len

    ; Read the second string
    rw 3,0,str2,256

    ; Compare the strings
    mov esi, str1  ; Load address of the first string into ESI
    mov edi, str2  ; Load address of the second string into EDI

    ; Compare each character in the strings
.loop:
    mov al, [esi]   ; Load a byte from the first string
    mov bl, [edi]   ; Load a byte from the second string

    cmp al, bl      ; Compare the bytes
    jne .not_equal  ; If they are not equal, jump to the not_equal label

    cmp al, 0       ; Check if we've reached the end of the strings (null terminator)
    je .equal       ; If yes, the strings are equal

    inc esi         ; Move to the next character in the first string
    inc edi         ; Move to the next character in the second string
    jmp .loop       ; Repeat the loop

.equal:
    ; Display the message for equal strings
    rw 4,1,equal_msg,equal_msglen   


    ; Exit the program
    mov eax, 1
    mov ebx, 0
    int 0x80


.not_equal:
    ; Display the message for not equal strings
    rw 4,1,not_equal_msg,not_equal_msglen 


    ; Exit the program
    mov eax, 1
    mov ebx, 0
    int 0x80


%%%%%%%%%%%%%%%%%%%%%% String Revarsal %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

section .data
    prompt db "Enter a string: ", 0
    promptlen:  equ $-prompt  
    
    result_msg db "Reversed string: ", 0
    result_msglen:  equ $-result_msg  
    
section .bss
    input_string resb 256   ; Reserve space for the input string
    reversed_string resb 256   ; Reserve space for the reversed string
    strlen resb 256

%macro rw 4
        mov eax,%1         
	mov ebx,%2          
	mov ecx,%3     
	mov edx,%4                        
	int 80h;  
%endmacro

section .text
    global _start

_start:
    ; Prompt the user for input
    rw 4,1,prompt,promptlen    
    
    ; Read the user's input
    rw 3,0,input_string,256    
    
    ; Find the length of the input string
    xor eax, eax              ; Clear EAX
    mov edi, input_string     ; Load address of the input string into EDI

.loop_length:
    mov al, [edi]             ; Load a byte from the input string
    cmp al, 0                 ; Check if it's the null terminator
    je .reverse               ; If it is, jump to the reverse loop
    inc edi                   ; Move to the next character
    inc eax                   ; Increment the length counter
    jmp .loop_length          ; Repeat the loop

mov [strlen],eax

.reverse:
    ; Reverse the string
    dec edi                   ; Point EDI to the last character of the input string
    mov esi, reversed_string  ; Load address of the reversed string into ESI

.loop_reverse:
    mov al, [edi]             ; Load a byte from the input string
    mov [esi], al             ; Store it in the reversed string
    inc esi                   ; Move to the next position in the reversed string
    dec edi                   ; Move backward in the input string
    cmp edi, input_string     ; Check if we've reached the beginning of the input string
    jae .loop_reverse         ; If not, repeat the loop

    ; Null-terminate the reversed string
    mov byte [esi], 0

    ; Display the result
    rw 4,1,result_msg,result_msglen    
    rw 4,1,reversed_string,strlen    
    
    
    ; Exit the program
    mov eax, 1
    mov ebx, 0
    int 0x80
