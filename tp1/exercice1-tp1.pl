homme(albert).
homme(jean).
homme(paul).
homme(hamza).
homme(mohamedreda).
homme(bertrand).
homme(dominique).
homme(hassanrojola).
homme(abderahmane).
homme(yassin).
homme(zaid).
homme(mustapha).
homme(elhossain).
homme(benoit).
homme(mohamed).
homme(mohammad).
femme(germaine).
femme(samia).
femme(sila).
femme(test).
femme(canonbolt).
femme(christiane).
femme(simone).
femme(marie).
femme(sophie).
pere(mustapha, samia).
pere(mustapha, mohammad).
pere(mohamed, elhossain).
pere(elhossain, mustapha).
pere(mustapha, yassin).
pere(mustapha, zaid).
pere(albert, jean).
pere(jean, paul).
pere(paul, bertrand).
pere(paul, sophie).
pere(jean, simone).
mere(germain, jean).
mere(samia, sila).
mere(samia, test).
mere(christiane,simone).
mere(christiane,paul).
mere(simone,benoit).
mere(marie,bertrand).
mere(marie,sophie).

%parent a
parent(X, Y):-pere(X, Y), homme(X).
parent(X, Y):-mere(X, Y), femme(X).
% n'est pas necessaire d'ajouter homme(X) et femme(X).

%b
fils(X, Y):- homme(X), parent(Y, X).
%c
fille(X, Y) :- femme(X), parent(Y, X).
%d
grand_pere(X, Y):- homme(X), parent(X, Z), parent(Z, Y).
%e
grand_mere(X, Y):- femme(X), parent(X, Z), parent(Z, Y).
%f
frere(X,  Y):- homme(X), parent(Z, X), parent(Z, Y), X \= Y.
%g
soeur(X, Y):- femme(X), femme(Y), parent(Z, X), parent(Z, Y), X \= Y.
