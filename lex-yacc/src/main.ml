let read_file filename = 
  let lines = ref [] in
  let chan = open_in filename in
  try
    while true; do
      lines := input_line chan :: !lines
    done; !lines
  with End_of_file ->
    close_in chan;
    List.rev !lines ;;

let main () =

  (* currently it gets the expression from arguments to the program*)

  (*
  let argv   = Array.to_list Sys.argv in
  let args   = List.tl argv in
  let expr   = String.concat " " args in
   *)

  (* reads the filename from arg but it relays on the fact that 
     filename will be the second argument *)
  let argv = Array.to_list Sys.argv in
  let filename = List.nth argv 1 in
  
  let lines      = read_file filename  in
  let prog       = Util.join lines in

  
  let lexbuf = Lexing.from_string prog in
  let result = Parser.main Lexer.token lexbuf in
    print_string (prog ^ " = ");
    Printf.printf "%d\n" (Compile.compile result)

let () = main ()
