father(shanon,tom).
father(tom,bob).

#pos(p1,{grandchild(bob,shannon)},{grandchild(bob,tom),grandchild(shanon,tom),grandchild(tom,shanon)}).

%3 ~ grandchild(X,Y) :- father(X,Z),father(Z,Y).
%3 ~ grandchild(X,Y) :- father(Z,X),father(Y,Z).
%2 ~ grandchild(X,Y) :- father(X,Y).
