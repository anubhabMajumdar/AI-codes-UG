last_element([X], X).
last_element([X|Rest], L) :- last_element(Rest, L).