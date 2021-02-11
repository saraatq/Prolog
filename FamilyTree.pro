predicates 

nondeterm male(symbol)
nondeterm female(symbol)
nondeterm son(symbol, symbol)
nondeterm daughter(symbol, symbol)
nondeterm parent(symbol, symbol)
nondeterm father(symbol, symbol)
nondeterm mother(symbol, symbol)
nondeterm sister(symbol, symbol)
nondeterm brother(symbol, symbol)
nondeterm grandmother(symbol, symbol)
nondeterm grandfather(symbol, symbol)
nondeterm uncle(symbol, symbol)
nondeterm aunt(symbol, symbol)
nondeterm cousin(symbol, symbol)
nondeterm niece(symbol, symbol)
nondeterm nephew(symbol, symbol)

clauses

father(X,Y):-
	male(X),
	parent(X,Y).
	
mother(X,Y):-
	female(X),
	parent(X,Y).
	
brother(X,Y):-
	male(X),
	parent(Z,X),
	parent(Z,Y),
	X<>Y.
	
sister(X,Y):-
	female(X),
	parent(Z,X),
	parent(Z,Y),
	X<>Y.
	
grandfather(X,Y):-
	father(X,Z),
	parent(Z,Y).
	
grandmother(X,Y):-
	female(X),
	parent(X,Z),
	parent(Z,Y).
	
uncle(X,Y):-
	brother(X,Z),
	parent(Z,Y).
	
aunt(X,Y):-
	sister(X,Z),
	parent(Z,Y).
	
son(X,Y):-
	male(X),
	parent(Y,X).
	
daughter(X,Y):-
	female(X),
	parent(Y,X).
	
cousin(X,Y):-
	parent(Z,X),
	uncle(Z,Y) 
	;
	parent(Z,X),
	aunt(Z,Y).
	
nephew(X,Y):-
	son(X,Z),
	sister(Z,Y)
	;
	son(X,Z),
	brother(Z,Y).
	
niece(X,Y):-
	daughter(X,Z),
	sister(Z,Y)
	;
	daughter(X,Z),
	brother(Z,Y).
	
goal
