duplicate([],[]).
duplicate([H|T],[H,H|Y]) :- duplicate(T,Y). 
