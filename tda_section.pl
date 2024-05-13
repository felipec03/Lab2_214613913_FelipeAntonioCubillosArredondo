% Constructor
% Meta Principal
% Metas secundarias
section(Point1,Point2,Distance,Cost,[Point1,Point2,Distance,Cost]):-
    integer(Distance), integer(Cost).

% Getters

getSectionDistance(Section, D):-
    section(_,_,D,_,Section).

getSectionDCost(Section, C):-
    section(_,_,_,C,Section).