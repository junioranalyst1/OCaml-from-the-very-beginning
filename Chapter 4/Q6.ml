(*
 * remove duplicate from left:
 * 1 2 1 3 2 4 5 -> 1 2 3 4 5
 * *)
 let make_set lst =
  let rec is_member n mlst =
    match mlst with
    | [] -> false
    | h::tl ->
        begin
          if h=n then true
          else is_member n tl
        end
  in
  let rec loop lbuf rbuf =
    match rbuf with
    | [] -> lbuf
    | h::tl ->
        begin
          if is_member h lbuf then loop lbuf tl
          else loop (h::lbuf) rbuf
        end
  in
  List.rev (loop [] lst);;