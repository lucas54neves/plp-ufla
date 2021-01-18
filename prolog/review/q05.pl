enesimo(0,[H|_],H).
enesimo(X,[_|T],R) :- enesimo(X,T,R), X is X - 1.