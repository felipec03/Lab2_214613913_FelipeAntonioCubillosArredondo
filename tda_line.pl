:- use_module('TDAsection').
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

% Requisitos Funcionales
% Se utiliza función interior para respetar dominio.
lineLengthInterior([],0,0,0).
lineLengthInterior([HeadSections|TailSections],Length,Distance,Cost):-
    lineLengthInterior(TailSections, AcumLength, AcumDistance, AcumCost),

    getSectionDistance(HeadSections, CurrentDistance),
    getSectionCost(HeadSections, CurrentCost),
    
    Length is AcumLength + 1,
    Distance is AcumDistance + CurrentDistance,
    Cost is AcumCost + CurrentCost.

lineLength(Line, LengthFinal, DistanceFinal, CostFinal):-
    getLineSections(Line, Sections),
    lineLengthInterior(Sections, LengthFinal, DistanceFinal, CostFinal).

% Line Section Length
miMember(X, [X|T], Out) :- Out = [X|T].
miMember(X, [_|T], Out) :- miMember(X, T, Out).

invertir_lista([], []).
invertir_lista([H|T], ListaInvertida) :-
    invertir_lista(T, ListaTemporal),
    append(ListaTemporal, [H], ListaInvertida).

getSubsectionMask(List,S1,S2,SubSection):-
    miMember(S1,List,ListA),
    invertir_lista(ListA, ListB),
    miMember(S2,ListB, ListC),
    invertir_lista(ListC, SubSection).

getSubsection(Line, Section1, Section2, SubSection):-
    getLineSections(Line, SectionList),
    getSubsectionMask(SectionList, Section1, Section2, SubSection).