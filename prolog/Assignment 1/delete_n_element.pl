dne([],_,[]).
dne([_|Rest],1,Z) :- dne(Rest,0,Z),!.
dne([A|Rest],N,[A|Z]) :- N1 is N-1,dne(Rest,N1,Z).