duplica([],[]).
duplica([H|T],[H,H|T2]) :- duplica(T,T2).
