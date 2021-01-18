mdc(A,0,A).
mdc(A,B,R) :- mdc(B,mod(A,B)).