% Constructor
% Meta Principal
% Metas secundarias
line(Id,Name,RailType,Sections,[Id,Name,RailType,Sections]).

% Getters
getLineSections(Line, SectionsOut):-
    line(_,_,_,LineList,Line),
    SectionsOut = LineList.

% Metas Principales
% Metas Secundarias
suma_lista([],0).
suma_lista([H|T], Acumulador) :-
    suma_lista(T, Temporal),
    Acumulador is Temporal + H.
    
% Requisitos Funcionales
lineLength([],0,0,0)-
lineLength(Line,Length,Distance,Cost):-
    getLineSections(Line, OutputList),
    suma_lista(OutputList, Output) 