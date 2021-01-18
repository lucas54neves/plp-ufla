remover_todas([],_,[]).
remover_todas([H|T],H,T2) :- remover_todas(T,H,T2), !.
remover_todas([H|T],X,[H|T2]) :- remover_todas(T,X,T2).

remover_repetidos([],[]).
remover_repetidos([H|T],[H|T2]) :- remover_todas(T,H,T3), remover_repetidos(T3,T2).
