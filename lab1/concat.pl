attach([], List, List).
attach([Head|Tail], List, [Head|Rest]) :-
    attach(Tail, List, Rest).

assemble(L1,L2,L3,Result) :-
          attach(L1, L2, Tmp),
          attach(Tmp, L3, Result).
