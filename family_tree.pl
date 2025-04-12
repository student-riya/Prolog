%Facts
female(Pam).
female(Ann).
female(Liz).
female(Pat).

male(Tom).
male(Bob).
male(Jim).

parent(Bob,Pam).
parent(Bob,Tom).
parent(Liz,Tom).
parent(Ann,Bob).
parent(Pat,Bob).
parent(Jim,Pat).

%rules
father(x,y):-male(y),parent(x,y).
mother(x,y):-female(x),parent(x,y).
grandparent(x,y):-parent(x,z),parent(z,y).
grandfather(x,y):-male(y),parent(x,z),parent(z,y).
siblings(x,y):-parent(x,z),parent(y,z),x\=y.
sister(x,y):-female(x),sibling(x,y).
parentlist(x):-parent(x,y),parent(x,z),write(y,z).
