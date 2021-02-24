
domains
ilist = integer*

predicates
sum(ilist , integer)

clauses 
sum([ ],0).
sum([H|T],S):-
	sum(T,NS),
	S = NS+H.
	
	
goal 
sum([1,2,3],S).
