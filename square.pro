predicates

nondeterm repeat
nondeterm square
nondeterm sqr(integer)

clauses
repeat.
repeat:- repeat.

square:-
	repeat,
	write("Enter a number: "),
	readint(X),
	sqr(X).
	
sqr(-1).
sqr(X):-
	Y=X*X ,
	write(Y,"\n"),
	fail.
	
goal

square.
