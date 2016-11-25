add(0,L2,L2).
add(s(Rest),L2,s(S2)):-
	add(Rest,L2,S2).

mult(0,_,0).
mult(s(Rest),L2,M):-
	!,
	mult(Rest,L2,Z),
	add(Z,L2,M).

sub(A,B,S):-
	lt(A,B,Z),
	Z is 0,
	!,
	sub2(B,A,S).
sub2(0,A,A).
sub2(s(Rest),s(A),S):-
	sub2(Rest,A,S).

lt(0,s(_),1).
lt(s(_),0,0).
lt(0,0,0).
lt(s(A),s(B),R):-
	lt(A,B,R),
	!.

div(_,0,-1).
div(0,s(_),0).
div(A,B,Z):-
	lt(A,B,X),
	X is 1,
	!,
	Z is 0.
div(A,B,s(Z)):-
	sub(A,B,S),
	div(S,B,Z),
	!.

rem(A,B,S):-
	div(A,B,D),
	mult(B,D,M),
	sub(A,M,S).

sqrt2(A,B):-
	range(A,s(0),B).

range(A,T,B):-
	mult(T,T,M),
	lt(A,M,Z),
	Z is 1,
	!,
	sub(T,s(0),B).
range(A,T,B):-
	add(T,s(0),T1),
	range(A,T1,B).	 	

	















	