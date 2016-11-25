list_length([],0).
list_length([X|Rest], s(N)) :- list_length(Rest, N).