/*---------------------------------------------------------------*/
/* Telecom Paristech - J-L. Dessalles 2009                       */
/*            http://teaching.dessalles.fr                       */
/*---------------------------------------------------------------*/

%%%%%%%%%%%
% Parsing %
%%%%%%%%%%%

	%%%%%%%%%%%%%%%%%%%%%%%%%
	% top down recognition  %
	%%%%%%%%%%%%%%%%%%%%%%%%%

:- consult('dcg2rules.pl').     % DCG to 'rule' converter: np --> det, n. becomes rule(gn,[det,n])
:- dcg2rules('family.pl').      % performs the conversion by asserting rule(np,[det,n])

go :-
	tdr([s],[the,sister,talks,about,her,cousin]).

tdr(Proto, Words) :-     % top-down recognition – Proto = list of non-terminals or words
	match(Proto, Words, [], []).  % Final success. This means that Proto = Words
tdr([X|Proto], Words) :-      % top-down recognition.
	rule(X, RHS),    % retrieving a candidate rule that matches X
	append(RHS, Proto, NewProto),  % replacing X by RHS (= right-hand side)
	nl, write(X),write(' --> '), write(RHS),
	match(NewProto, Words, NewProto1, NewWords), % see if beginning of NewProto matches beginning of Words
	get0(_),
	tdr(NewProto1, NewWords).  % lateral recursive call

% match() eliminates common elements at the front of two lists
match([X|L1], [X|L2], R1, R2) :-
	!,
	write('\t****  reconnu: '), write(X),
	match(L1, L2, R1, R2).
match(L1, L2, L1, L2).
