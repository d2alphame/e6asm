Bits 64									; Assemble to 64 bits code

; Validates a string against another one. So if there's a string 'A' to be
; validated against another string 'B', this checks to ensure that all
; characters in 'A' also appear in 'B'. The function exits when an invalid
; character is encountered.
;
; In
;	rsi: The string to validate
;	rdi: The validation string. The string (length prefixed) against which to validate
;	rdx: Where to put the consecutive matching characters (length prefixed string)
;
; Out
;	al: The first invalid character encountered
;	rdi: Pointer to string of consecutive matching characters
;	rsi: Points to the invalid character
;	cf: Clear
;
; Note that rax, rbx, rcx, rdx, rsi, rdi, and rbp will be in an unknown state by the
; end of this function. While r8-r15 along with the stack (rsp) will be
; preserved. This function always clears the carry flag

validate:
	push r8							; Preserve the r8 register on the stack
	xor rcx, rcx					; Clear the rcx register
	mov rbp, rdx					; Save the destination buffer in rbp
	xor rdx, rdx					; Clear the rdx register
	mov rcx, dword [rdi]			; Load the length of the validation string into rcx
	mov r8, rcx						; We do this because the scasb instruction will affect rcx
	add rdi, 4						; Point rdi at the first actual character of the validation string
	mov rbx, rdi					; Because scasb affects rdi
	push rbp						; Save this as it will be need later
	add rbp, 4						; Leave space for the length of the valid characters

	.start:
		lodsb						; Load the first character of the string to validate from rsi to al. Autoincrement rsi
		repnz scasb					; Check for character in the validation string
		jnz .done					; If the zero flag is still cleared then the character is not in the validation string
		inc rdx						; If we get to this point then the character is valid so increment rdx
		mov [rbp], al				; Write the valid character to memory
		inc rbp						; Increment rbp for next write
		mov rcx, r8					; Reload the length of the validation string (we're about to loop)
		mov rdi, rbx				; Also reload the pointer to the first character of the validation string
		jmp .start					; Return continue with the next character in the string to validate

	.done:
		pop rbp						; Get the address of the destination buffer which we had saved earlier
		mov [rbp], edx				; Write out the 4-byte length of the string of matching characters
		mov rdi, rbp				; Point rdi at the resulting string of characters
		pop r8						; Restore the r8 register
		dec rsi						; Point rsi back at the invalid character ('lodsb' incremented rsi)
		clc							; Clear the carry flag
		ret							; Return



; Exact opposite as validate above. Rather than ensure that all elements in
; string A are in string B, this ensures that No element in string A is in
; string B. That is, the characters in string B shouldn't appear in string A
;
; In
;	rsi: The string to unvalidate
;	rdi: The unvalidation string. The string (length prefixed) against which to unvalidate
;	rdx: Where to put the consecutive unvalidated characters (length prefixed string)
;
; Out
;	al: The first matching character found
;	rdi: Pointer to string of consecutive matching characters
;	rsi: Points to the character
;	cf: Clear
;
; Note that rax, rbx, rcx, rdx, rsi, rdi, and rbp will be in an unknown state by the
; end of this function. While r8-r15 along with the stack (rsp) will be
; preserved. This function always clears the carry flag

unvalidate:
	push r8							; Preserve the r8 register on the stack
	xor rcx, rcx					; Clear the rcx register
	mov rbp, rdx					; Save the destination buffer in rbp
	xor rdx, rdx					; Clear the rdx register
	mov rcx, dword [rdi]			; Load the length of the unvalidation string into rcx
	mov r8, rcx						; We do this because the scasb instruction will affect rcx
	add rdi, 4						; Point rdi at the first actual character of the validation string
	mov rbx, rdi					; Because scasb affects rdi
	push rbp						; Save this as it will be need later
	add rbp, 4						; Leave space for the length of the valid characters

	.start:
		lodsb						; Load the first character of the string to validate from rsi to al. Autoincrement rsi
		repnz scasb					; Check for character in the unvalidation string
		jz .done					; If the zero flag is set then the character is present in the unvalidation string
		inc rdx						; If we get to this point then the character is not in the unvalidation string
		mov [rbp], al				; Write the character to memory
		inc rbp						; Increment rbp for next write
		mov rcx, r8					; Reload the length of the unvalidation string (we're about to loop)
		mov rdi, rbx				; Also reload the pointer to the first character of the unvalidation string
		jmp .start					; Return and continue with the next character in the source string

	.done:
		pop rbp						; Get the address of the destination buffer which we had saved earlier
		mov [rbp], edx				; Write out the 4-byte length of the string of matching characters
		mov rdi, rbp				; Point rdi at the resulting string of characters
		pop r8						; Restore the r8 register
		dec rsi						; Point rsi back at the current character ('lodsb' already incremented rsi)
		clc							; Clear the carry flag
		ret							; Return
