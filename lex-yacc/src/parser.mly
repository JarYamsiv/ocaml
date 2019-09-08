%{
open Ast
%}

%token <int> INT
%token PLUS MINUS TIMES DIV
%token LPAREN RPAREN

%left PLUS MINUS        /* lowest precedence */
%left TIMES DIV         /* medium precedence */

%start main             /* the entry point */

%token EOF

%type <Ast.exp> main

%%

(* Menhir let us give names to symbol values,
   instead of having to use $1, $2, $3 as in ocamlyacc *)
main
  : e = expr EOF                { e }
  ;

expr
  : n = INT                 {Int n }
  | LPAREN e = expr RPAREN  {Paren e }
  | e1=expr PLUS  e2=expr   {Plus (e1,e2) }
  | e1=expr MINUS e2=expr   {Sub  (e1,e2) }
  | e1=expr TIMES e2=expr   {Mul  (e1,e2) }
  | e1=expr DIV   e2=expr   {Div  (e1,e2) }
  ;