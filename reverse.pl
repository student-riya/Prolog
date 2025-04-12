% Base case: The reverse of an empty list is an empty list.
reverse_list([], []).

% Recursive case: Reverse the tail, then append the head to the end.
reverse_list([X|Y], Reversed) :-
    reverse_list(Y, RevY),
    append(RevY, [X], Reversed).
