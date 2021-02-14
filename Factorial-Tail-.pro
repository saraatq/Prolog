predicates

fact(integer, integer)
fact_aux(integer, integer, integer)

clauses

fact(X,Y):-
	X >= 0,
	fact_aux(X,Y,1).
	
fact_aux(0, R, R):- !.
fact_aux(X, Y, Aux):-
	NX=X-1,
	NAux=X*Aux,
	fact_aux(NX, Y, NAux).
goal

%fact(5,X).
