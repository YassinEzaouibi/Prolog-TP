%[x|Y]=[hamza, me, mayou]. 1
member(X, [X|_]).
member(X, [_|Q]):- member(X,Q).

% premier element de la liste. 2
premier(X,[X|_]).

% dernier element de la list. 3
der(X, [X]).
der(X, [_|Q]):- der(X,Q).

% avant dernier element. 4
avDer(X, [X,_]).
avDer(X, [_|Q]):- avDer(X,Q).

% sup lf k ieme element. 5
sup_k(X, [X|Q], 1, Q).
sup_k(X, [T|Q], K, [T|R]):- K>1, K1 is K-1, sup_k(X,Q,K1,R).

% longeur d'une liste. 6
long([],0).
long([_|Q],N):-long(Q, N1), N is N1+1.

% le predicat concat. 7
concate([],L,L).
concate([T|Q], L, [T|R]):- concate(Q,L,R).

% exercice 3
% est que la liste est vide. 1
pair([]).
pair([_,_|Q]):- pair(Q).

% .2
listepaire([],[]).
listepaire([T|Q],[T|R]):- 0 is T mod 2, listepaire(Q,R).
listepaire([_|Q],R):- listepaire(Q,R).

% exercice 4
%  .1
gen(0,[]).
gen(N, [N|Q]):- N>0, N1 is N-1, gen(N1, Q).
% .2
dup([],[]).
dup([T|Q], [T,T|R]):- dup(Q, R).

%exercice 5.
% .1
%max3(N1,N2,N3, Max):- Max is N1 > N2, N1> 3.
max2(N1, N2):- N1 > N2, write('N1 is grather').
max3(N1, N2, N3, M):- N1 >= N2, N1 >= N3, M = N1.
max3(N1, N2, N3, M):- N2 >= N1, N2 >= N3, M = N2.
max3(N1,N2,N3,M):- N3 >= N1, N3 >= N2, M = N3.
max3Defini(N1, N2, N3, M):- Max1 is max(N1,N2), M is max(Max1, N3).

% .2
maxList([X],[X]).
maxList([T|Q], M):- maxList(Q,R), M is max(T, R).

% .3
minmax([X], Minmax):- maxList(X, Minmax).
minmax([T|Q], Minmax):- maxList(T, MaxT), minmax(Q, MinQ), Minmax is min(MaxT, MinQ).
