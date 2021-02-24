domains
ilist = integer*

predicates
sum(ilist, integer)
summ(ilist, integer, integer)

clauses 
sum(L,S):-
	summ(L,S,0).

summ([],Ac,Ac):-!.
summ([H|T],S,Ac):-
	NAc = Ac + H,
	summ(T,S,NAc).
	
	
	
goal 
sum([1,2,3,4], S).
