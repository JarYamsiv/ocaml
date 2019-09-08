type exp =
  Int of int |
  Plus of exp*exp |
  Mul of exp*exp |
  Sub of exp*exp |
  Paren of exp |
  Div of exp*exp 
