append_list([], X, X).
append_list([X|Rest], L, [X|L2]) :- append_list(Rest, L, L2).   