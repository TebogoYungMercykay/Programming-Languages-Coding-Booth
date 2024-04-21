# SWI-Prolog Project

This project contains Prolog code demonstrating the use of facts and rules.

## Creating Prolog Code

1. Create a new file with a `.pl` extension. This is the standard extension for Prolog files. For example, `example.pl`.
2. Open the file in a text editor and write your Prolog code. For example:

```prolog
% Defining facts
parent(john, jim).
parent(john, ann).

% Defining rules
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
```

3. Save the file and close it.

## Running the Code

1. Navigate to the directory containing the Prolog file.
2. Run the Prolog environment with your file:

```bash
swipl -s example.pl
```

3. In the Prolog environment, you can now query your facts and rules. For example:

```prolog
?- sibling(jim, ann).
```

This will check if Jim and Ann are siblings according to the defined facts and rules.

4. To exit the Prolog environment, use the `halt.` command.

This README provides instructions on how to create a Prolog file, write Prolog code, and run the code using the SWI-Prolog environment.

## Food For Thought:

- ### `Functional Programming`

![Fuctions](../images/functional.png)

- ### `Predicate Calculus:Logical Operators`

![Logical Operators](../images/logical_operators.png)

- ### `Predicate Calculus: Quantifiers`

![Quantifiers](../images/quantifiers.png)

- ### `Sorting a List`
    - In an imperative language (procedural)
        - Describe an algorithm for sorting the list
        - Computer executes the steps of the algorithm
    - In a logic language (non-procedural)
        - Describe the characteristics of a sorted list, not the process of rearranging a list:
        - sort(old_list, new_list) `(b implies a)` permute(old_list, new_list) `(conjunction)` sorted (new_list)
        - sorted (list) `(b implies a)` `(universal)`j such that `1 <= j < n`, list(j) `<=` list(j+1)

---