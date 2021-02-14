predicates

fact(integer, integer)

clauses

fact(0,1):-!.
fact(X,Y):-
	X2=X-1,
	fact(X2,Z),
	Y=Z*X.
	
goal

%fact(4,X).
