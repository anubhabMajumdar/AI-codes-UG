reverse([X], [X]).
reverse([X|Rest], L) :- reverse(Rest, Y), append_list(Y, [X], L).