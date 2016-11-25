max([X],X).
max([H|T],H):-
	max(T,Z),
	H>=Z,
	!.
max([_|T],Z):-
	max(T,Z).

gcd(X,X,X):-
	!.
gcd(X,Y,Z):-
	X>Y,
	!,
	X1 is X-Y,
	gcd(X1,Y,Z).	
gcd(X,Y,Z):-
	Y1 is Y-X,
	gcd(X,Y1,Z).			

ordered([_]):-
	!.
ordered([X|[Y|Z]]):-
	X=<Y,
	ordered([Y|Z]).	

removeall([],_,[]).
removeall([X|T],X,Z):-
	!,
	removeall(T,X,Z).
removeall([Y|T],X,[Y|Z]):-
	removeall(T,X,Z).

sublist([],_):-!.
sublist([H|T],[H|B]):-
	!,sublist(T,B).
sublist(L1,[_|B]):-
	sublist(L1,B).		

rmduplicate(L,Y):-
	rmd(L,[],X),
	reverse(X,Y).
rmd([],A,A).
rmd([H|T],A,Z):-
	ismember(A,H),
	!,
	rmd(T,A,Z).
rmd([H|T],A,Z):-
	rmd(T,[H|A],Z).

ismember(_,[]):-!.
ismember([H|_],H):-!.
ismember([_|T],X):-
	ismember(T,X).

permutation([],[]).
permutation([H|T],L):-
	permutation(T,Z),
	sel(H,L,Z).
sel([],L,L).
sel(X,[X|R],R).
sel(X,[Y|R],[Y|Z]):-
	sel(X,R,Z).
		










