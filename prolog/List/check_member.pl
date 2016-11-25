check_member([X|_], X).
check_member([_|Rest], X) :- check_member(Rest, X).