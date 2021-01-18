contiguo([]).
contiguo([H1,H2|_]) :- H1 == H2, !.
contiguo([_,H2|T]) :- contiguo([H2|T]).
