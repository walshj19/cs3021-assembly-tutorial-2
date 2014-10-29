DEFAULT REL            ; solves a bug with declaration alignment

section .data
g       dd 256

section .text
global _p, _q, _f

_p:
    ;body
    add             rdi, rsi                    ;add i and j
    mov             [rsp+8], rdi                ;store result in shadow space
    shl             rdi, 2                      ;logical shift left
    sub             rdi, 1                      ;subtraction
    mov             rax, rdi                    ;move return value to eax
    ret

_q:
    ;body
    neg             rdi                         ;negate i
    mov             rsi, rdi                    ;store parameter -i
    mov             rdi, [g]                    ;load parameter g
    sub             rsp, 32                     ;allocate shadow space
    call            _p                          ;function call
    add             rsp, 32                     ;deallocate shadow space
    ret                                         ;return

_f:
    ;body
    cmp             rdi, 0                      ;compare with 0
    jle             else1                       ;if statement
    ;if
    mov             [rsp+8], rdi                ;store n in shadow space
    dec             rdi                         ;n-1
    sub             rsp, 32                     ;allocate shadow space
    call            _f                          ;f(n-1)
    add             rsp, 32                     ;deallocate shadow space
    mov             rdi, [rsp+8]                ;get stored variable
    imul            rax, rdi                    ;n*f(n-1)
    jmp             end1                        ;jump to end
else1:
    ;else
    mov             rax, 1
end1:
    ret                                         ;return