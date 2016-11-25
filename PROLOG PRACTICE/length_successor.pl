lens([],0).
lens([_|Rest],s(Z)):-
	lens(Rest,Z).