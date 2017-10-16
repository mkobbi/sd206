extract(X, [X|L], L).
extract(X, [Y|L], [Y|L1]) :-
    extract(X, L, L1),
    !.


pertence(E,L) :-
  extract(E, L, _),
  !.

nopertence(X,Y) :-
      pertence(X,Y),
      !,
      fail.
nopertence(X,Y).


remove(Elt, List, List) :-
  nopertence(Elt,List),
  !.

remove(Elt, List, K) :-
  pertence(Elt, List),
  extract(Elt, List, K),
  !,
  remove(Elt, K, _).
