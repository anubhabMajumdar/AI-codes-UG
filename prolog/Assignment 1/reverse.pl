reverse([],[]).
reverse([X],[X]).
reverse([A|Rest],L1):-reverse(Rest,Z), append(Z,[A],L1).

append([],[Y],[Y]).
append([A|Rest],[Y],[A|Z]):-append(Rest,[Y],Z).

rwa(X,Z):-rwa(X,[],Z).
rwa([],Acc,Acc).
rwa([A|Rest],Acc,Z):-rwa(Rest,[A|Acc],Z).