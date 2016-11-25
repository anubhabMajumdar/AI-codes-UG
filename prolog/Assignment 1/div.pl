div(_, 0, -1):-!.
div(0, _, 0).
div(X,Y,Z):-X<Y,
			Z is 0.
div(X,Y,Z):-X1 is X-Y,
			div(X1,Y,Z1),
			Z is Z1+1.	

