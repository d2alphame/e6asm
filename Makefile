.PHONY = all
all: keyword_checker.asm

.ONESHELL:
keyword_checker.asm : generate_keyword_checker.pl
	perl generate_keyword_checker.pl