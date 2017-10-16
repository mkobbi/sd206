/*---------------------------------------------------------------*/
/* Telecom Paristech - J-L. Dessalles 2009                       */
/*            http://teaching.dessalles.fr                       */
/*---------------------------------------------------------------*/

% partial elementary English grammar

% --- Grammar
s --> np, vp.
s(Number) --> np(Number), vp(Number).
np --> det, n.		% Simple noun phrase
np --> det, n, pp.		% Noun phrase + prepositional phrase
np --> [kirk].
np(Number) --> det(Number), n(Number).
vp --> v.      % Verb phrase, intransitive verb
vp --> v, np.		% Verb phrase, verb + complement:  like X
vp --> v, pp.		% Verb phrase, verb + indirect complement : think of X
vp --> v, np, pp.	% Verb phrase, verb + complement + indirect complement : give X to Y
vp --> v, pp, pp.	% Verb phrase, verb + indirect complement + indirect complement : talk to X about Y
vp(Number) --> v(Number).
pp --> p, np.		% prepositional phrase
% -- Lexicon
det --> [the].
det --> [my].
det --> [her].
det --> [his].
det --> [a].
det --> [some].
det(singular) --> [a].
det(plural) --> [many].
det(_) --> [the].
n --> [dog].
n --> [daughter].
n --> [son].
n --> [sister].
n --> [aunt].
n --> [neighbour].
n --> [cousin].
v --> [grumbles].
v --> [likes].
v --> [gives].
v --> [talks].
v --> [annoys].
v --> [hates].
v --> [cries].
v(singular) --> [grumbles].
v(plural) --> [grumble].
v(singular) --> [likes].
v(plural) --> [like].
p --> [of].
p --> [to].
p --> [about].
n(singular) --> [dog].
n(plural) --> [dogs].
