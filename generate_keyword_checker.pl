#!/bin/perl

use v5.26.1;

# This is the perl file that generates the keyword_checker.asm file.
# The keyword_checker.asm file checks if a word pointed to by rsi is a keyword
# that we recognize.

# Add the keyword you want to recognize to this list
my @keywords = qw(
    add
    clc
    cmpsb
    inc
    jmp
    jnz
    lodsb
    mov
    pop
    push
    repnz
    repz
    ret
    scasb
    stc
    xor
    rax
    rbx
    rcx
    rdx
    rbp
    rsp
    rdi
    rsi
    rip
    r8
    r9
    r10
    r11
    r12
    r13
    r14
    r15
    r16
);

my @keywords_list;

my $keyword_checker;
open $keyword_checker, '>', "keyword_checker.asm";


for(@keywords) {

    push @keywords_list, "keyword_$_: dd " . length . "\n" . qq(\t db "$_"); 

    my $asm = << "END-KEYWORDS-CODE";
    check_$_:
        mov rdi, rsi
        mov rsi, keyword_$_
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


END-KEYWORDS-CODE
    print $keyword_checker $asm;
}

say $keyword_checker $_ for(@keywords_list);
