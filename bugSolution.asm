```assembly
section .data
    array dw 10, 20, 30, 40, 50
    length dw 5
    sum dw 0

section .text
    global _start

_start:
    ; Calculate the sum of array elements
    mov cx, [length] ; Load array length into cx
    mov si, array ; Load array address into si
    mov ax, 0 ; Initialize sum to 0

loop_start:
    add ax, [si] ; Add current array element to sum
    add si, 2 ; Move to next element (2 bytes per element)
    loop loop_start ; Decrement cx and jump to loop_start if cx != 0

    ; Exit the program
    mov eax, 1 ; sys_exit syscall number
    xor ebx, ebx ; Exit code 0
    int 0x80
```