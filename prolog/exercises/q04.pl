compara([],[]) :- [] == [].
compara([A|X],[B|Y]) :- A == B, !, compara(X,Y).
