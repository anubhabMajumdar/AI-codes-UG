fwa(0,1).
fwa(1,1).
fwa(N,R):-N1 is N-1,fwa(N1,Z), R is N*Z,!.

fa(N,R):-fa(N,1,R).
fa(0,Acc,Acc).
fa(N,Acc,R):-Acc1 is Acc*N, N1 is N-1, fa(N1, Acc1, R).