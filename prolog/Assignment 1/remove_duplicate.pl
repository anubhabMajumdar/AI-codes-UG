rde([X],[X]).
rde([A|Rest],[A|Z]):-
	remove(Rest,A,N),rde(N,Z),!.

remove([],_,[]).
remove([A|Rest],A,Z):-
	remove(Rest,A,Z),!.
remove([X|Rest],A,[X|Z]):-
	remove(Rest,A,Z).



rdea(L,Z):-
	rdea(L,[],L2),
	rwa(L2,Z).
rdea([],A,A).
rdea([H|T],A,M):-
	check_member(A,H),
	!,
	rdea(T,A,M).
rdea([H|T],A,M):-
	rdea(T,[H|A],M).		

check_member([X|_], X).
check_member([_|Rest], X) :- 
	check_member(Rest, X).

rwa(X,Z):-
	rwa(X,[],Z).
rwa([],Acc,Acc).
rwa([A|Rest],Acc,Z):-
	rwa(Rest,[A|Acc],Z).	