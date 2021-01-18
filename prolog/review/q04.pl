concatenar([],L,L).
concatenar([H|T],L,[H|D]) :- concatenar(T,L,D).

inverter([],[]).
inverter([H|T],L) :- inverter(T,X), concatenar(X,[H],L).