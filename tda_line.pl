:- module(tda_line, [line/5, lineLength/4, lineAddSection/3]).
:- use_module(tda_section).

% Constructor
% id (int) X name (string) X rail-type (string) X sections (List section) X Line
% Meta Principal:
% Metas secundarias: 
line(Id,Name,RailType,Sections,[Id,Name,RailType,Sections]).

% Getters
getLineSections(Line, SectionsOut):-
    line(_,_,_,LineList,Line),
    SectionsOut = LineList.

%-------------- Requisitos Funcionales --------------

% Line Length 
% Se utiliza función interior para respetar dominio.

lineLengthInterior([],0,0,0).
lineLengthInterior([HeadSections|TailSections],Length,Distance,Cost):-
    lineLengthInterior(TailSections, AcumLength, AcumDistance, AcumCost),

    getSectionDistance(HeadSections, CurrentDistance),
    getSectionCost(HeadSections, CurrentCost),
    
    Length is AcumLength + 1,
    Distance is AcumDistance + CurrentDistance,
    Cost is AcumCost + CurrentCost.

% line (line) X length (int) X distance (Number) X cost (Number)
% Metas Principales: 
% Metas Secundarias: 
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

% line (line) X station1-name (String) X station2-name (String) X path (List Section) X distance (Number) X cost (Number)
% Metas Principales: 
% Metas Secundarias: 
lineSectionLength(Line, Station1, Station2, SectionList, Distance, Cost):-
    section(Station1,_,_,_,Section1),
    section(Station2,_,_,_,Section2),
    getSubsection(Line, Section1, Section2, SubSectionList),
    lineLengthInterior(SubSectionList, Length, Distance, Cost).

% Line Add Section
% line (Line) X section (Section) X lineOut (Line)
lineAddSection(Line, Section, LineOut):-
    line(NewId, NewName, NewRailType, SectionList, Line),
    \+ member(Section, SectionList),
    append([SectionList], Section, NewSectionList),
    line(NewId, NewName, NewRailType, NewSectionList, LineOut).
    
% Is Line
% line (Line) -> bool.
isLine(Line):-
    line(_,_,_,[HeadSectionList|TailSectionList],Line). 