next_to_with_append(X, Y, L) :- append_list(_, [X|[Y|_]], L).
next_to_with_append(X, Y, L) :- append_list(_, [Y|[X|_]], L).