/* tree_sort(Xs, Ys) is true if Ys is a sorted permutation of the list Xs. */
tree_sort(Xs, Ys):-
  make_tree(Xs, void, T),
  in_order_dl(T, Ys, []).

/* make_tree(List, Tree, NewTree) is true if NewTree is the binary tree    */
/*   resulting from inserting the elements of the List into the binary     */
/*   tree Tree.                                                            */
make_tree([], T, T).
make_tree([X|Xs], T, U):-
  insert_tree(X, T, V),
  make_tree(Xs, V, U).

/* insert_tree(X, Tree, NewTree) is true if NewTree is the result of       */
/*   inserting the element X as a leaf in the ordered binary tree Tree.    */
/*   If the element X is already in the tree, the tree is unchanged.       */
insert_tree(X, tree(X,L,R), tree(X,L,R)):-!.
insert_tree(X, tree(Y,L,R), tree(Y,L1,R)):-
  X < Y, !, insert_tree(X, L, L1).
insert_tree(X, tree(Y,L,R), tree(Y,L,R1)):-
  insert_tree(X, R, R1).
insert_tree(X, void, tree(X,void,void)).

/* in_order_dl(Tree, Ls, Ms) is true if the difference list Ls, Ms is an   */
/*   in-order traversal of the binary tree Tree.                           */
in_order_dl(tree(X,L,R), Xs, Zs):-
  in_order_dl(R, Ys, Zs),
  in_order_dl(L, Xs, [X|Ys]).
in_order_dl(void, Xs, Xs).