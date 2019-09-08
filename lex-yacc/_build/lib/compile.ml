open Ast

let rec compile expr = match expr with
    (Int n) 		->  n |
    (Plus (e1,e2) )	->  (compile e1) + (compile e2) |
    (Sub  (e1,e2) )	->  (compile e1) - (compile e2) |
    (Mul  (e1,e2) )	->  (compile e1) * (compile e2) |
    (Div  (e1,e2) )	->  (compile e1) / (compile e2) |
    (Paren e)		->  (compile e)
                              ;;
    
                 
                   
