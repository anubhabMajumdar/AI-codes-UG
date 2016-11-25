trimlast(N,L,L1):-reverse(L,Temp),trim(N,Temp,Temp2),reverse(Temp2,L1).

reverse([],[]).
reverse([X],[X]).
reverse([A|Rest],L1):-reverse(Rest,Z), append(Z,[A],L1).

append([],[Y],[Y]).
append([A|Rest],[Y],[A|Z]):-append(Rest,[Y],Z).

trim(_,[],[]).
trim(N,[_|Rest], Z):- N1 is N-1, N1>=0, !, trim(N1, Rest, Z).
trim(N,[A|Rest], [A|Z]):- N1 is N-1, trim(N1, Rest, Z), !.
