same_length([],[]).
same_length([_|Rest1],[_|Rest2]):-
	same_length(Rest1,Rest2).