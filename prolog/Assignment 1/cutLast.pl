cutlast([],[]).
cutlast([_],[]).
cutlast([A|Rest],[A|Z]):-cutlast(Rest,Z),!.