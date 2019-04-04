bpfasm: bpf_asm.o bpf_exp.yacc.o bpf_exp.lex.o
	gcc -o bpfasm $^

%.yacc.c: %.y
	bison -o $@ -d $<

%.lex.c: %.l
	flex -o $@ $<

%.o: %.c
	gcc -c -o $@ $<

%.yacc.o: %.yacc.c
	gcc -c -o $@ $<

%.lex.o: %.lex.c
	gcc -c -o $@ $<
