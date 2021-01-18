soma([X],X) :- !.
soma([],0).
soma([H|T],Y) :- soma(T,R), Y is H+R.