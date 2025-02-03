aime(marie, framboises).

voleur(pierre).
aime_pierre(pierr, X):-aime(X, framboises).%hala wala reda
vole(X, Y) :- voleur(X), aime(X, Y).
