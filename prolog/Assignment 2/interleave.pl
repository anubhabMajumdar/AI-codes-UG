interleave(L1,L2,L):-
	interleave(L1,L2,1,L).

interleave([],L2,_,L2).
interleave(L1,[],_,L1).
interleave([A|B],L2,F,[A|Z]):-
	F is 1,
	!,
	interleave(B,L2,2,Z).
interleave(L1,[X|Y],_,[X|Z]):-
	interleave(L1,Y,1,Z).



