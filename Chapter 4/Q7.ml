(*
* rev function is inneficient because it is directely proportional to the time it takes to run it
* hence, the longer the argument the longer it takes
**)

let rec rev_inner a l =
  match l with
  [] -> a
| h::t -> rev_inner (h :: a) t;;