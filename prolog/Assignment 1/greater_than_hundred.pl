gth([],0).
gth([A|Rest],X1):-A>100,!,gth(Rest,X),X1 is X+1.
gth([_|Rest],X):-gth(Rest,X).