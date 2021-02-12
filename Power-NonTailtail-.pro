predicates

power(integer, integer, integer)

clauses

power(_, 0, 1):- !.
power(X, Y, Z):-
	C = Y-1,
	power(X,C,NZ),
	Z=NZ*X.

goal
power(2,2,X).
