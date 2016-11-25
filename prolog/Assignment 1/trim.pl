trim(_,[],[]).
trim(N,[_|Rest], Z):- N1 is N-1, N1>=0, !, trim(N1, Rest, Z).
trim(N,[A|Rest], [A|Z]):- N1 is N-1, trim(N1, Rest, Z), !.
