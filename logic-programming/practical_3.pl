% TASK 1


% Defining Facts: Marriage and Pet Ownership
married(peter, mary).
married(lilly, joseph).

ownsPet(peter, rover).
ownsPet(mary, fluffy).
ownsPet(joseph, tweety).
ownsPet(lilly, fluffy).

% Defining Rules

% Two people are in the same household if they are married
household(X, Y) :- married(X, Y).
household(X, Y) :- married(Y, X).

% A pet is a household pet if it is owned by someone in the household
householdPet(O1, O2, P) :- household(O1, O2), (ownsPet(O1, P) ; ownsPet(O2, P)).

% A pet is a wandering pet if it is a household pet of two different households
wanderingPet(P) :- householdPet(O1, O2, P), householdPet(O3, O4, P),
    (O1 \= O3, O2 \= O4, O1 \= O4, O2 \= O3).


% TASK 2


% Helper method
positive(X) :- X >= 1.

% Sum whem list is empty
addPositives([], 0).

% If a member is positive, add it to the sum of rest of list
addPositives(List, X) :- member(H, List), positive(H),
    append(_, [H|T], List),
    addPositives(T, X1),
    X is X1 + H.

% If a member is not positive, ignore it and sum rest of list
addPositives(List, X) :- member(H, List), \+ positive(H),
    append(_, [H|T], List),
    addPositives(T, X).


% TASK 2


% Helper method