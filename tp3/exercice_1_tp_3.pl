polynome(X, X).% X=3
polynome(C,_):- number(C).
polynome(X):- integer(X).
polynome(x^N):- integer(N).
%polynome(x^N, x):- N > 0, integer(N).

%exercice 2

%abs
abs(X, Y):- X >= 0, Y is X.
abs(X, Y):- X < 0, Y is -X.

%min
min(X, Y, Z):- (X =< Y, Z is X); Z is Y.
%min(X, Y, Z):- Y =< X, Z is Y.
%max like the min but reverse the signs
max(X, Y, Z):- (X >= Y, Z is X); Z is Y.

%pgcd
pgcd(X, 0, X):- X > 0, !.
pgcd(X, Y, Pgcd):- Y>0, R is X mod Y,pgcd(Y,R,Pgcd).

%ppcm
ppcm(X,Y,Ppcm):- X>0, Y>0, pgcd(X,Y,Pgcd), Ppcm is (X*Y//Pgcd).

%factorial
factorial(0, 1).
factorial(N, F) :- N>0, N1 is N-1, factorial(N1,F1),F is N * F1.

%fibonachi
fibo(0,1).
fibo(1,1).
fibo(N,Un):- N>1, N1 is N-1, N2 is N-2, fibo(N1,R1), fibo(N2,R2), Un is R1+R2.

%Exercice 3
%Calcule d'un nombre complexe
moduleC(z(Reel, Ima), Mod):- Mod is sqrt(Reel^2+Ima^2).
%arg C
argC(z(Reel, Ima), Arg):- ( Reel>0, Ima>0, Arg is atan(Ima/Reel));
                         (Reel < 0, Ima >= 0 -> Arg is pi+atan(Ima/Reel));
                         (Reel =:= 0, Ima =:= 0 -> Arg is 0);
                         (Reel =:= 0, Ima>0 -> Arg is pi/2);
                         (Reel =:= 0, Ima<0 -> Arg is -pi/2).
%atan fonction
argCC(A,B,Arg):- atan(B,A,Arg).
% les listes
Liste = [].








