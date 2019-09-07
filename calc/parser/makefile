all:lex yacc
	ocamlc -c parser.mli
	ocamlc -c lexer.ml
	ocamlc -c parser.ml

lex:lexer.mll
	ocamllex lexer.mll

yacc:parser.mly
	ocamlyacc parser.mly
