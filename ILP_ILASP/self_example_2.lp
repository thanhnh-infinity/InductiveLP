father(shanon,tom).
father(tom,bob).

#pos(p1,{grandchild(bob,shannon)},{}).

3 ~ grandchild(X,Y) :- father(X,Z),father(Z,Y).
3 ~ grandchild(X,Y) :- father(Z,X),father(Y,Z).
2 ~ grandchild(X,Y) :- father(X,Y).
