split_list([],[],[]).
split_list([A|List],Y,[A|Z]):-A<0,!,split_list(List,Y,Z).
split_list([A|List],[A|Y],Z):-split_list(List,Y,Z).
	