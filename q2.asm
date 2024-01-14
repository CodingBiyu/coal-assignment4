[org 100h]
jmp start


num1: dw 1, 6, 2, 4, 3
results: dw 0

max:
push bp
mov bp, sp
mov bx, [bp+6]
mov dx, [bx]

max_loop:
cmp [bx], dx
jle next
mov dx, [bx]
next:
add bx, 2
loop max_loop
mov [results], dx
pop bp
ret 4

start:
mov ax, num1
push ax
mov cx, 5
push cx
call max

mov ax, 4ch
int 21h