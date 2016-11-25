membership(A, [A|_]).
membership(A, [_|L]) :- member(A, L).