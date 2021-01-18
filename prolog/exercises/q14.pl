remover([H|T],H,T) :- !.
remover([H|T],X,[H|T2]) :- remover(T,X,T2).
