multiplex([A|As], [B|Bs], [A,B|Rs]) :-
    !, multiplex(As, Bs, Rs).
multiplex([], Bs, Bs) :- !.
multiplex(As, [], As).
