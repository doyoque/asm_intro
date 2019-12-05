; hello.asm
;
; Author: Doyoque
; Date: 06-Dec-2019

global _start

section .text:

_start:
  mov eax, 0x4            ; use the write syscall
  mov ecx, 1              ; use stdout as the fd (file descriptor)
  mov ecx, message        ; use the message as the buffer
  mov edx, message_length ; and supply the length
  int 0x80                ; invoke the syscall

  ; now gracefully exit

  mov eax, 0x1
  mov ebx, 0
  int 0x80

section .data:
  message: db "Hello world!", 0xA
  message_length equ $-message
