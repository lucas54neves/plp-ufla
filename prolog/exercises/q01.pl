progenitor(misseno,ronaldo).
progenitor(albany,ronaldo).
progenitor(misseno,roselayne).
progenitor(albany,roselayne).
progenitor(ronaldo,lucas).
progenitor(ronaldo,sarah).
progenitor(roselayne,bruno).
progenitor(roselayne,fabiany).
homem(misseno).
homem(ronaldo).
homem(lucas).
homem(bruno).
mulher(albany).
mulher(roselayne).
mulher(fabiany).
mulher(sarah).

irma(X,Y) :-
	progenitor(Z,X),
	progenitor(Z,Y),
	mulher(X),
	X \== Y.

irmao(X,Y) :-
	progenitor(Z,X),
	progenitor(Z,Y),
	homem(X),
	X \== Y.

descendente(X,Z) :-
	progenitor(Z,X).

descendente(X,Z) :-
	progenitor(Y,X),
	descendente(Y,Z).

mae(X,Y) :-
	progenitor(X,Y),
	mulher(X),
	X \== Y.

pai(X,Y) :-
	progenitor(X,Y),
	homem(X),
	X \== Y.

avo(X,Z) :-
	progenitor(Y,Z),
	progenitor(X,Y),
	homem(X),
	X \== Z.

tia(X,Y) :-
	progenitor(Z,Y),
	progenitor(W,Z),
	progenitor(W,X),
	X \== Y.

primo(X,Y) :-
	progenitor(Z,X),
	progenitor(W,Y),
	progenitor(T,Z),
	progenitor(T,W),
	homem(X),
	X \== Y.
