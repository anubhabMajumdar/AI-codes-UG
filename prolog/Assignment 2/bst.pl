node(X,[X]).	

preorder(nil,[]).
preorder(bt(L,N,R),A):-
	preorder(L,Z1),
	preorder(R,Z2),
	node(N,N1),
	append(N1,Z1,Z),
	append(Z,Z2,A).

inorder(nil,[]).
inorder(bt(L,N,R),A):-
	inorder(L,Z1),
	inorder(R,Z2),
	node(N,N1),
	append(Z1,N1,Z),
	append(Z,Z2,A).

postorder(nil,[]).
postorder(bt(L,N,R),A):-
	postorder(L,Z1),
	postorder(R,Z2),
	node(N,N1),
	append(Z1,Z2,Z),
	append(Z,N1,A).

