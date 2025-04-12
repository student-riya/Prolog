%Base case: If both numbers are equal,that is the gcd.
gcd(X,X,X).
%Base case: If First number is 0, then the second number is gcd.
gcd(0,X,X).
%Base case: If Second number is 0, then the first number is gcd.
gcd(X,0,X).
%If X>Y, subtract Y from X and continue.
gcd(X,Y,G):- X>Y,Z is X-Y,gcd(Z,Y,G).
%If Y>X, subtract X from Y and continue.
gcd(X,Y,G):- Y>X,Z is Y-X,gcd(X,Z,G).
