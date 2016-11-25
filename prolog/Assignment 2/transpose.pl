transpose([],[],[]).
transpose([A|B],[X|Y],[(A,X)|Z]):-
	transpose(B,Y,Z).