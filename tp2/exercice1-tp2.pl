aime(adam, pommes).
aime(inas, carottes).
aime(karim, oranges).
fruits(pommes).
fruits(oranges).
fruits(ananass).
legume(carottes).
bonne_sante(X, Y):- fruits(Y), aime(X, Y).

