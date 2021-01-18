produto(B,B,_).
produto(A,B,P) :- C is A + 1, produto(C,B,P1), P is P1 * A.