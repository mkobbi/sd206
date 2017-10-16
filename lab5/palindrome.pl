pal --> c(C), pal, c(C). % central recursion
pal --> c(C), c(C). % termination for an even list
pal --> c(_). % termination for an odd list

c(C) --> [C], {member(C,[0,1,2,3,4])}. % Prolog code embedded in DCG
