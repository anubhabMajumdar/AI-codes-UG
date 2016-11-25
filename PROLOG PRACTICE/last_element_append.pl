append([],L2,L2).
append([X|Y],L2,[X|Z]):-
	append(Y,L2,Z).

lastelement(L,X):-
	append(_,[X],L).	

nextto(L,X,Y):-
	append(_,[X|[Y|_]],L),!.
nextto(L,X,Y):-
	append(_,[Y|[X|_]],L).
