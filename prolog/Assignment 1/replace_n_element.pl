rne([],_,_X,[]).
rne([_|Rest],1,X,[X|Z]) :- rne(Rest,0,X,Z),!.
rne([A|Rest],N,X,[A|Z]) :- N1 is N-1,rne(Rest,N1,X,Z).