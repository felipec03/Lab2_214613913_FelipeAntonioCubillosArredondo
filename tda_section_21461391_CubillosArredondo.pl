:- module(tda_section_21461391_CubillosArredondo, [section/5, getSectionDistance/2, getSectionCost/2]).
:- use_module(tda_station_21461391_CubillosArredondo).
% Constructor
% point1 (station)  X point2 (station) X distance (positive-number) X cost (positive-number U {0}) X Section
% Meta Principal: 
% Metas secundarias: 
section(Point1,Point2,Distance,Cost,[Point1,Point2,Distance,Cost]):-
    number(Cost), 
    number(Cost).

% Getters
getSectionDistance(Section, D):-
    section(_,_,D,_,Section).

getSectionCost(Section, C):-
    section(_,_,_,C,Section).