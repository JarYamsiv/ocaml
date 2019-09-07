parse_obj = parser/lexer.cmo parser/parser.cmo
all:parser calc
	ocamlc -o calc $(parse_obj) calc.cmo
	@echo "Done compiling you are ready to go"

calc:calc.ml
	ocamlc -c calc.ml

parser:parser/lexer.mll parser/parser.mly
	cd parser/ && $(MAKE) 
