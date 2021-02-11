predicates

nondeterm choice(integer, integer, integer, real)
nondeterm check(char)
nondeterm run

clauses

choice(1, I1, I2, R):-
	R = I1 + I2.
	
choice(2, I1, I2, R):-
	R = I1 - I2.
	
choice(3, I1, I2, R):-
	R = I1 * I2.
	
choice(4, I1, I2, R):-
	R = I1 / I2.
	
check('Y').
check('y').
run :-
	write("Choose the operation you want."),nl,
	write("1- Add,"),nl,
	write("2- Substract,"),nl,
	write("3- Multiply,"),nl,
	write("4- Divide."),nl,
	write("Enter your choice: "),readint(X),nl,
	write("Enter first number: "),readint(Num1),
	write("Enter second number: "),readint(Num2),
	choice(X, Num1, Num2, R),
	write("Result : ",R),nl,
	write("Do you want to make another operation?(y/n): "),readchar(Ch),write(Ch),nl,check(Ch),run.
run.

goal

run.
