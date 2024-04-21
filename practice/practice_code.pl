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

