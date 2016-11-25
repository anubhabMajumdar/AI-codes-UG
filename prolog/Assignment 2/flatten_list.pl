flatten2([], []) :- !.
flatten2([L|Ls], FlatL) :-
    !,
    flatten2(L, NewL),
    flatten2(Ls, NewLs),
    append(NewL, NewLs, FlatL).
flatten2(L, [L]).

append(X,[],X).
append([],Y,Y).
append([A|Rest],Y,[A|Z]):-append(Rest,Y,Z).