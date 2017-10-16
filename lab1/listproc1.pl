extract(X, [X|L], L).
extract(X, [Y|L], [Y|L1]) :-
    extract(X, L, L1).

permute([], []).
permute([First|Rest], PermutedList) :-
        permute(Rest, PermutedRest),
        extract(First, PermutedList, PermutedRest).

length_(0,[]).
length_(L+1, [_|T]) :-
        length_(L,T).

even(List) :-
    length_(N, List),
    Test is N mod 2,
    Test =:= 0.

odd(List) :-
    length_(N, List),
    Test is N mod 2,
    Test =:= 1.

last(X,[X]).
last(X,[_|Z]) :- last(X,Z).

% On considère les deux listes L et K.
% Si L=[X] contient un seul élément alors K = [X|L]
% Sinon concat(L\Last, [Last|K])

attach([], List, List).
attach([Head|Tail], List, [Head|Rest]) :-
    attach(Tail, List, Rest).
