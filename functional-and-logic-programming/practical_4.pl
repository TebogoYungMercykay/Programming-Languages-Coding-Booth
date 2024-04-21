% Logic Programming


% Helper predicates
isNegative(X) :- X < 0.
isZero(X) :- X =:= 0.
isPositive(X) :- X > 0.

% Returning Empty List For Empty List Input
stripNegativesAndZerosDuplicatePositives([], []).

stripNegativesAndZerosDuplicatePositives([H|T], X) :- (isNegative(H) ; isZero(H)),  
    stripNegativesAndZerosDuplicatePositives(T, X).

stripNegativesAndZerosDuplicatePositives([H|T], [H,H|X]) :- isPositive(H),  
    stripNegativesAndZerosDuplicatePositives(T, X).
