# it evaluates to an integer (- : int = 5)
# We can rewrite the expression as such:

match 1 + 1 with
  2 ->
  (match 2 + 2 with
   3 -> 4
  | 4 -> 5);;