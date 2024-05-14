:- module('TDAsection', [section/5, getSectionDistance/2, getSectionCost/2]).
:- use_module('TDAstation').
% Constructor
% Meta Principal
% Metas secundarias
section(Point1,Point2,Distance,Cost,[Point1,Point2,Distance,Cost]):-
    number(Distance), number(Cost).

% Getters
getSectionDistance(Section, D):-
    section(_,_,D,_,Section).

getSectionCost(Section, C):-
    section(_,_,_,C,Section).