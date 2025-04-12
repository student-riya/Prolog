% Base case: the length of an empty list is 0
len([], 0).

% Recursive case: the length of a non-empty list is 1 + the length of the tail
len([_|Tail], N) :-
    length(Tail, N1),
    N is N1 + 1.
