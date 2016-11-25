sub(X,0,X).
sub(X,Y,Z):-Y > 0,!,
	    Y1 is Y-1,
            X1 is X-1,
            sub(X1,Y1,Z).
sub(X,Y,Z):-Y1 is Y+1,
            X1 is X+1,
            sub(X1,Y1,Z).
