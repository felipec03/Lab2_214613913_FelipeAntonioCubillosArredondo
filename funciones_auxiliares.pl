% Metas Principales
% Metas Secundarias
member(X, [X|_]) :- !.
member(X, [_|T]) :- member(X, T).

% Metas Principales
% Metas Secundarias
longitud([], 0).
longitud([_|T], L) :-
    longitud(T, Acum),
    L is Acum + 1.

% Metas Principales
% Metas Secundarias
suma_lista([],0).
suma_lista([H|T], Acumulador) :-
    suma_lista(T, Temporal),
    Acumulador is Temporal + H.

% Metas Principales
% Metas Secundarias
append([], L, L).
append([H|T], L, [H|R]) :-
    append(T, L, R).

% Metas Principales
% Metas Secundarias
invertir_lista([], []).
invertir_lista([H|T], ListaInvertida) :-
    invertir_lista(T, ListaTemporal),
    append(ListaTemporal, [H], ListaInvertida).

% Metas Principales
% Metas Secundarias
contar_ocurrencias(_, [], 0).
contar_ocurrencias(Elemento, [Elemento|T], Contador) :-
    contar_ocurrencias(Elemento, T, ContadorTemporal),
    Contador is ContadorTemporal + 1.
contar_ocurrencias(Elemento, [_|T], Contador) :-
    contar_ocurrencias(Elemento, T, Contador).

% Metas Principales
% Metas Secundarias
remove_duplicates([], []).
remove_duplicates([H|T], NewList) :-
    remove_duplicates(T, TempList),
    (member(H, TempList) -> NewList = TempList;
        NewList = [H|TempList]
        ).

% Metas Principales
% Metas Secundarias
reverse(List, Final) :- 
    reverse(List, [], Final).
reverse([], Final, Final). 
reverse([First|Rest], Reversed, Final) :-
	rev(Rest, [First|Reversed], Final).