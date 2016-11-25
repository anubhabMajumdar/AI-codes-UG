sum([],0).
sum([X],X).
sum([H|T],Z1):-
	sum(T,Z), 
	Z1 is Z+H.

length2([],0).
length2([_|T],Z):-
	length2(T,Z1),
	Z is Z1+1.

mean([],0).
mean(L,M):-
	sum(L,S),
	length2(L,L1),
	M is S/L1.

mean2([],0):-!.
mean2(L,M):-
	mean2(L,0,0,M).
mean2([],S,L,M):-
	M is S/L.
mean2([H|T],S,L,M):-
	S2 is S+H,
	L2 is L+1,
	mean2(T,S2,L2,M).	

