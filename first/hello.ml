(* defining a varaible works exactly like in SML *)
let x = 5;;

(* But we can have definitions like this which looks like imperative *)
let y = string_of_int x;;

(* string concat works the same way as in SML*)
print_string ("Hello world the number is " ^ y ^ "\n");;

(* Binary tree with leaves car­rying an integer. *)
type tree = Leaf of int | Node of tree * tree * int

(* recursive functions need the definition let rec. *)                                
let rec exists_leaf test tree =
  match tree with
  | Leaf v -> test v
  | Node (left, right , root) ->
      exists_leaf test left
      || exists_leaf test right

let has_even_leaf tree =
  exists_leaf (fun n -> n mod 2 = 0) tree

let rec inorder_tree tree =
  match tree with
  | Leaf v -> print_int v 
  | Node (left,right,root) -> inorder_tree left; print_int root ;inorder_tree right
                
let t = Node (Leaf 3,Leaf 4,2);;

inorder_tree t;;
