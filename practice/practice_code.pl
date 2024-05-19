% Logic Programming

% Defining facts
parent(john, jim).
parent(john, ann).

% Defining rules
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Helper method
positive(X) :- X >= 1.

% Returning Zero For Empty List
addPositives([], 0).

% Adding All Members Which Are Natural numbers
addPositives(List, X) :- 
    member(H, List), 
    positive(H), 
    select(H, List, Rest), 
    addPositives(Rest, X1), 
    X is X1 + H.

% Ignoring All Members Which Are Not Natural numbers
addPositives(List, X) :- 
    member(H, List), 
    \+ positive(H), 
    select(H, List, Rest), 
    addPositives(Rest, X).

% Uncle or Aunt Function

father(bill, jake).
father(bill, shelley).
father(jake, ted).
father(ron, liz).
mother(mary, jake).
mother(mary, shelley).
mother(janet, ted).
mother(shelley, liz).

sibling(X, Y) :-
    (father(F, X), father(F, Y)), 
    X \= Y.
sibling(X, Y) :- 
    (mother(M, X), mother(M, Y)), 
    X \= Y.

uncleAunt(X, Y) :-
	sibling(S, X),
    (mother(S, Y); father(S, Y)),
    S \= X.
