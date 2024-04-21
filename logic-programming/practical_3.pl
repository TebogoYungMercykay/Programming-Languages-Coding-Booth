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

% Returning Zero For Empty List
addPositives([], 0).

% Adding All Members Which Are Natural numbers
addPositives(List, X) :-
    member(H, List),
    positive(H),
    append(_, [H|T], List),
    addPositives(T, X1),
    X is X1 + H.

% Ignoring All Members Which Are Not Natural numbers
addPositives(List, X) :-
    member(H, List),
    \+ positive(H),
    append(_, [H|T], List),
    addPositives(T, X).


% TASK 3


% Determining If The List Contains a Single Element
singleElement([_]).
secondElement([_, Second|_], Second).

% Retrieving Every Second Element From the Input List
getEverySecondValue([], []).
getEverySecondValue([_], []).

getEverySecondValue(InputList, Result) :-
    singleElement(InputList),
    Result = [].

getEverySecondValue([_, Second|_], [Second]) :-
    singleElement([_, Second]).

getEverySecondValue([_, Second|Tail], [Second|Result]) :-
    secondElement([_, Second|Tail], Second),
    getEverySecondValue(Tail, Result).
