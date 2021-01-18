insereOrdenado([], _, _).
insereOrdenado([H], X, [H,X]) :- H < X, !.
insereOrdenado([H|T],X,[H|R]) :- H < X, !, insereOrdenado(T,X,R).
insereOrdenado([H|T],X,[X,H|T]).
