% Logic Programming

% Defining facts
parent(john, jim).
parent(john, ann).

% Defining rules
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.