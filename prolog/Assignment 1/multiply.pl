mult(X,0,0).
mult(0,X,0).
mult(X,1,X).
mult(1,X,X).
mult(X,Y,Z):-Y > 0,!,
	    Y1 is Y-1,
	    mult(X,Y1,Z1),
	    Z is X+Z1.
mult(X,Y,Z1):-abs(Y,Y1),
	     mult(X,Y1,Z),
	     Z1 is Z*(-1).

