predicates

nondeterm run
nondeterm runn(integer)
nondeterm repeat

clauses
repeat.
repeat:- repeat.

run:-
	repeat,
	write("1. square a number.\n2. cube a number.\n3. Exit\nEnter your choice: "),
	readint(X),
	runn(X).
	
runn(3).	
runn(1):-
	write("\nEnter a number: "),
	readint(X),
	Y=X*X ,
	write(Y,"\n\n"),
	fail.
	
runn(2):-
	write("\nEnter a number: "),
	readint(X),
	Y=X*X*X ,
	write(Y,"\n\n"),
	fail.
	

goal

run.
