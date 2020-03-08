Bits 64									; Assemble to 64 bits code

; Validates a string against another one. So if there's a string 'A' to be
; validated against another string 'B', this checks to ensure that all
; characters in 'A' also appear in 'B'. The function exits when an invalid
; character is encountered. When the function exits, the number of consecutive
; valid characters is returned in rcx
;
; In
;	rsi: The string to validate
;	rdi: The validation string. The string against which to validate
;
; Out
;	al: The first invalid character encountered
;	rcx: Number of consecutive valid characters
;	rsi: Points to the invalid character
;	cf: Clear
;
; Note that rax, rbx, rcx, rdx, rsi, rdi, and rbp will be in an unknown state by the
; end of this function. While r8-r15 along with the stack (rsp) will be
; preserved

validate:
	push r8							; Preserve the r8 register on the stack
	xor rcx, rcx					; Clear the rcx register
	xor rdx, rdx					; Clear the rdx register
	mov rcx, dword [rdi]			; Load the length of the validation string into rcx
	mov r8, rcx						; We do this because the scasb instruction will affect rcx
	add rdi, 4						; Point rdi at the first actual character of the validation string
	mov rbx, rdi					; Because scasb affects rdi

	.start:
		lodsb						; Load the first character of the string to validate from rsi to al. Autoincrement rsi
		repnz scasb					; Check for character in the validation string
		jnz .done					; If the zero flag is still cleared then the character is not in the validation string
		inc rdx						; If we get to this point then the character is valid so increment rdx
		mov rcx, r8					; Reload the length of the validation string (we're about to loop)
		mov rdi, rbx				; Also reload the pointer to the first character of the validation string
		jmp .start					; Return continue with the next character in the string to validate

	.done:
		pop r8						; Restore the r8 register
		dec rsi						; Point rsi back at the invalid character ('lodsb' incremented rsi)
		mov rcx, rdx				; Get the count in rcx
		clc							; Clear the carry flag
		ret							; Return