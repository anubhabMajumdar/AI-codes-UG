quicksort([],[]).
quicksort([X],[X]).
quicksort([H|Rest],Z):-partition(Rest,H,L1,L2), quicksort(L1,Z1), 
						quicksort(L2,Z2), append(Z1,[H],Temp),
						append(Temp,Z2,Z),!.

partition([],_,[],[]).
partition([A|Rest],X,[A|L1],L2):- A<X,!,partition(Rest,X,L1,L2).						
partition([A|Rest],X,L1,[A|L2]):-partition(Rest,X,L1,L2).						

append(X,[],X).
append([],Y,Y).
append([A|Rest],Y,[A|Z]):-append(Rest,Y,Z).

qsa(L,S):-qsa(L,[],S).
qsa([],A,A).
qsa([H|Rest],A,S):-partition(Rest,H,L1,L2),qsa(L1,A,Z1),qsa(L2,[H|Z1],S).