toh(0,_,_,_,[]):-!.
toh(1,S,_,D,[[S,D]]):-!.
toh(N,S,B,D,M):-
	N1 is N-1,
	toh(N1,S,D,B,Z),
	append(Z,[[S,D]],Z1),
	toh(N1,B,S,D,Z2),
	append(Z1,Z2,M).

append(X,[],X).
append([],Y,Y).
append([A|Rest],Y,[A|Z]):-
	append(Rest,Y,Z).