rfx([],_,_,[]).
rfx([X|Rest],X,Y,[Y|Rest]):-!.
rfx([A|Rest],X,Y,[A|Z]):-rfx(Rest,X,Y,Z).
