% Constructor
% id (int) X nombre (string) X Subway
subway(Id, Nombre, [Id, Nombre, _, _, _]):-
    int(Id), string(Nombre).
