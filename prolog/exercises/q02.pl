separa([X],[X|P],N) :- X >= 0, separa([],[X|P], N).
separa([X],P,N) :- X >= 0, separa([],[], [X|N]).
separa([X|Cauda],P,N) :- X >= 0, separa(Cauda,[X|P], N).
separa([X|Cauda],P,N) :- X < 0, separa(Cauda,P,[X|N]).
