/*test 2.
friend(ram,shyam).
friend(rani,pinky).
friend(raja,rani).
singer(pinky).
singer(ram).
singer(X):-friend(X,Y),singer(Y).
singer(X):-friend(Y,X),singer(Y).
