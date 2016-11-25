add(X,0,X).
add(X,Y,Z):-Y > 0,!,
	    Y1 is Y-1,
            X1 is X+1,
            add(X1,Y1,Z).
add(X,Y,Z):-Y1 is Y+1,
            X1 is X-1,
            add(X1,Y1,Z).
