:- module(tda_section, [section/5, getSectionDistance/2, getSectionCost/2]).
:- use_module(tda_station).
% Constructor
% point1 (station)  X point2 (station) X distance (positive-number) X cost (positive-number U {0}) X Section
% Meta Principal: 
% Metas secundarias: 
section(Point1,Point2,Distance,Cost,[Point1,Point2,Distance,Cost]):-
    Distance > 0, Cost > 0 ; Cost =:= 0.

% Getters
getSectionDistance(Section, D):-
    section(_,_,D,_,Section).

getSectionCost(Section, C):-
    section(_,_,_,C,Section).