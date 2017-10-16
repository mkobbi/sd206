attach([], List, List).
attach([Head|Tail], List, [Head|Rest]) :-
    attach(Tail, List, Rest).
    
sublist(L, K) :-
	attach(L, _, K).