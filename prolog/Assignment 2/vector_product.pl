vector_product([],[],[]).
vector_product([A|B],[X|Y],[Z1|Z2]):-
	Z1 is A*X,
	vector_product(B,Y,Z2).