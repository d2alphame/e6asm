; Scans a string for a given character. The character to scan
; for is in al and the string to scan is in rsi. The string to 
; is length-prefixed. Prefix the string with its 4-byte length
;
; IN:
;	AL the character to scan for
;	RDI the string to scan to prefixed with its 4-byte length
;
; OUT:
;	ZF Set if the character is found otherwise cleared
;
; EFFECT: None. All registers are preserved
scan_char:
	
	; Preserve the following registers on the stack
	push rdi
	push rcx
	
	mov rcx, dword [rdi]			; Load the length of the string into rcx
	add rdi, 4						; Move past the length of the string to the first character in the string
	repnz scasb						; Scan for the character.
	
	; Restore the registers before returning
	pop rcx
	pop rdi
	ret



; Scans all characters in a given string against another string. Note that the string
; of characters to match should not be length-prefixed
;
; IN:
;	RDI Length-prefixed string against which to scan characters
;	RSI String that contains characters to scan for
;
; OUT:
;	RAX Number of matching characters
;
; EFFECT: None. All registers are preserved
match:

	; Preserve the following registers 
	push rsi
	push rcx

	xor rcx, rcx									; This will be used for counting number of matches
	.fetch:
		lodsb										; Load up the character to scan for into al
		call scan_char								; Scan for the character
		jnz .done									; If the character was not found, then we're done
		inc rcx										; Increment number of character matches
		jmp .fetch									; Go scan for the next character

	.done:
		mov rax, rcx								; Return number of matches in rax
		
		; Restore the registers before returning
		pop rcx
		pop rsi
		ret



; The exact opposite of the 'match'. Only characters not found during a scan count as a match
; Characters found are founded as mismatch. String of characters to scan for should not be
; length-prefixed
;
; 
unmatch:

	; Preserve the following registers 
	push rsi
	push rcx

	xor rcx, rcx									; This will be used for counting number of matches
	.fetch:
		lodsb										; Load up the character to scan for into al
		call scan_char								; Scan for the character
		jz .done									; If the character was found, then we're done
		inc rcx										; Increment number of character matches
		jmp .fetch									; Go scan for the next character

	.done:
		mov rax, rcx								; Return number of matches in rax
		
		; Restore the registers before returning
		pop rcx
		pop rsi
		ret