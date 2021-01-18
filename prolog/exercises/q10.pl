particiona([],[],[]) :- !.
particiona([X],[X],[]) :- !.
particiona([H1,H2|T],[H1|T1],[H2|T2]) :- particiona(T,T1,T2).