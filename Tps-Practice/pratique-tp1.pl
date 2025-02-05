homme(albert).
homme(jean).
homme(paul).
homme(bertrand).
homme(dominique).
homme(benoit).
homme(louis).

femme(germaine).
femme(christiane).
femme(simone).
femme(marie).
femme(sophie).


pere(albert, jean).
pere(jean, paul).
pere(paul, bertrand).
pere(paul, sophie).
pere(jean, simone).
pere(louis, benoit).

mere(germain, jean).
mere(christiane,simone).
mere(christiane,paul).
mere(simone,benoit).
mere(marie,bertrand).
mere(marie,sophie).

%parent(X,Y):-  pere(X, Y); mere(X, Y).
%parent(X, Y):- mere(X, Y)

parent(X, Y):- pere(X, Y), homme(X).
parent(X, Y):- mere(X, Y), femme(X).

fils(XY,Y):- homme(XY), parent(Y,XY).

fille(XX, Y):- femme(XX), parent(Y, XX).

grand_pere(X,Y):- homme(X),parent(X,Z),parent(Z,Y).

grand_mere(X,Y):- femme(X),parent(X,Z),parent(Z,Y).

frere(X, Y):- homme(X), parent(Z, X), parent(Z, Y).

soeur(X,Y):- femme(X),parent(Z,X),parent(Z,Y).

% exercice 2

aime(marie,framboises).

voleur(pierre).

aiment(pierre,X):- aime(X,framboises).

vole(X,Y):-voleur(X),aiment(X,Y).

aime2(adam,pomme).
aime2(ines,carottes).
aime2(karim,orange).
fruit(pomme).
fruit(orange).
legumes(carotte).
en_bonne_sante(X):- aime2(X,Y),fruit(Y).
