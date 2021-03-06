    check_add:
        mov rdi, rsi
        mov rsi, keyword_add
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_clc:
        mov rdi, rsi
        mov rsi, keyword_clc
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_cmpsb:
        mov rdi, rsi
        mov rsi, keyword_cmpsb
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_inc:
        mov rdi, rsi
        mov rsi, keyword_inc
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_jmp:
        mov rdi, rsi
        mov rsi, keyword_jmp
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_jnz:
        mov rdi, rsi
        mov rsi, keyword_jnz
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_jz:
        mov rdi, rsi
        mov rsi, keyword_jz
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_lodsb:
        mov rdi, rsi
        mov rsi, keyword_lodsb
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_mov:
        mov rdi, rsi
        mov rsi, keyword_mov
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_pop:
        mov rdi, rsi
        mov rsi, keyword_pop
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_push:
        mov rdi, rsi
        mov rsi, keyword_push
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_repnz:
        mov rdi, rsi
        mov rsi, keyword_repnz
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_repz:
        mov rdi, rsi
        mov rsi, keyword_repz
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_ret:
        mov rdi, rsi
        mov rsi, keyword_ret
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_scasb:
        mov rdi, rsi
        mov rsi, keyword_scasb
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_stc:
        mov rdi, rsi
        mov rsi, keyword_stc
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_xor:
        mov rdi, rsi
        mov rsi, keyword_xor
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_rax:
        mov rdi, rsi
        mov rsi, keyword_rax
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_rbx:
        mov rdi, rsi
        mov rsi, keyword_rbx
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_rcx:
        mov rdi, rsi
        mov rsi, keyword_rcx
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_rdx:
        mov rdi, rsi
        mov rsi, keyword_rdx
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_rbp:
        mov rdi, rsi
        mov rsi, keyword_rbp
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_rsp:
        mov rdi, rsi
        mov rsi, keyword_rsp
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_rdi:
        mov rdi, rsi
        mov rsi, keyword_rdi
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_rsi:
        mov rdi, rsi
        mov rsi, keyword_rsi
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_rip:
        mov rdi, rsi
        mov rsi, keyword_rip
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_r8:
        mov rdi, rsi
        mov rsi, keyword_r8
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_r9:
        mov rdi, rsi
        mov rsi, keyword_r9
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_r10:
        mov rdi, rsi
        mov rsi, keyword_r10
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_r11:
        mov rdi, rsi
        mov rsi, keyword_r11
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_r12:
        mov rdi, rsi
        mov rsi, keyword_r12
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_r13:
        mov rdi, rsi
        mov rsi, keyword_r13
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_r14:
        mov rdi, rsi
        mov rsi, keyword_r14
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_r15:
        mov rdi, rsi
        mov rsi, keyword_r15
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


    check_r16:
        mov rdi, rsi
        mov rsi, keyword_r16
        lodsd
        mov rcx, rax
        repz cmpsb
        jnz .not_found
        mov rax, 0x01
        clc
        ret
    
        .not_found:
            xor rax, rax
            clc
            ret


align 16
keyword_add: dd 3
	 db "add"

align 16
keyword_clc: dd 3
	 db "clc"

align 16
keyword_cmpsb: dd 5
	 db "cmpsb"

align 16
keyword_inc: dd 3
	 db "inc"

align 16
keyword_jmp: dd 3
	 db "jmp"

align 16
keyword_jnz: dd 3
	 db "jnz"

align 16
keyword_jz: dd 2
	 db "jz"

align 16
keyword_lodsb: dd 5
	 db "lodsb"

align 16
keyword_mov: dd 3
	 db "mov"

align 16
keyword_pop: dd 3
	 db "pop"

align 16
keyword_push: dd 4
	 db "push"

align 16
keyword_repnz: dd 5
	 db "repnz"

align 16
keyword_repz: dd 4
	 db "repz"

align 16
keyword_ret: dd 3
	 db "ret"

align 16
keyword_scasb: dd 5
	 db "scasb"

align 16
keyword_stc: dd 3
	 db "stc"

align 16
keyword_xor: dd 3
	 db "xor"

align 16
keyword_rax: dd 3
	 db "rax"

align 16
keyword_rbx: dd 3
	 db "rbx"

align 16
keyword_rcx: dd 3
	 db "rcx"

align 16
keyword_rdx: dd 3
	 db "rdx"

align 16
keyword_rbp: dd 3
	 db "rbp"

align 16
keyword_rsp: dd 3
	 db "rsp"

align 16
keyword_rdi: dd 3
	 db "rdi"

align 16
keyword_rsi: dd 3
	 db "rsi"

align 16
keyword_rip: dd 3
	 db "rip"

align 16
keyword_r8: dd 2
	 db "r8"

align 16
keyword_r9: dd 2
	 db "r9"

align 16
keyword_r10: dd 3
	 db "r10"

align 16
keyword_r11: dd 3
	 db "r11"

align 16
keyword_r12: dd 3
	 db "r12"

align 16
keyword_r13: dd 3
	 db "r13"

align 16
keyword_r14: dd 3
	 db "r14"

align 16
keyword_r15: dd 3
	 db "r15"

align 16
keyword_r16: dd 3
	 db "r16"

