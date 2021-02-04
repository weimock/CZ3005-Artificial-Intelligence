offspring(prince_charles,queen_elizabeth).
offspring(princess_ann,queen_elizabeth).
offspring(prince_andrew,queen_elizabeth).
offspring(prince_edward,queen_elizabeth).

male(prince_charles).
male(prince_andrew).
male(prince_edward).
female(princess_ann).

olderThan(prince_charles,princess_ann).
olderThan(prince_charles,prince_andrew).
olderThan(prince_charles,prince_edward).
olderThan(princess_ann,prince_andrew).
olderThan(princess_ann,prince_edward).
olderThan(prince_andrew,prince_edward).

isOlder(X,Y) :- olderThan(X,Y).
isOlder(X,Y) :- olderThan(X,Z),isOlder(Z,Y).

insert(A,[B|C],[B|D]) :- not(isOlder(A,B)),!,insert(A,C,D).
insert(A,C,[A|C]).

successionSort([A|B], SortList) :- successionSort(B,Tail), insert(A,Tail,SortList).
successionSort([],[]).

sucessionList(X,SuccessionList):- findall(Y,offspring(Y,X),ChildNodes),successionSort(ChildNodes,SuccessionList).
