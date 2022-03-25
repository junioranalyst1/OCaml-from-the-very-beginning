let rec evens l =
    match l with
      [] -> []
    | [_] -> []
    | _::b::t -> b :: evens t