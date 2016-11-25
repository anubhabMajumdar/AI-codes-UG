membership(X, bt(nil, X, nil)).
membership(X, bt(Left, X, Right)).
membership(X, bt(Left, Root, _)) :- membership(X, Left), !.
membership(X, bt(_, Root, Right)) :- membership(X, Right).


